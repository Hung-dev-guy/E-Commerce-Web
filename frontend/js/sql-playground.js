// ============================================================
// SQL Playground — app.js
// Client-side SQL editor with simulated query results
// ============================================================

// --------------- DOM REFS ---------------
const sqlInput = document.getElementById('sqlInput');
const lineNumbers = document.getElementById('lineNumbers');
const runBtn = document.getElementById('runBtn');
const clearBtn = document.getElementById('clearBtn');
const exportBtn = document.getElementById('exportBtn');
const editorStatus = document.getElementById('editorStatus');
const charCount = document.getElementById('charCount');
const resultPlaceholder = document.getElementById('resultPlaceholder');
const resultTableWrapper = document.getElementById('resultTableWrapper');
const resultHead = document.getElementById('resultHead');
const resultMessage = document.getElementById('resultMessage');
const resultStatus = document.getElementById('resultStatus');
const rowCount = document.getElementById('rowCount');
const toastContainer = document.getElementById('toastContainer');

// State
let lastResult = null;

// --------------- LINE NUMBERS ---------------
function updateLineNumbers() {
    const lines = sqlInput.value.split('\n').length;
    const nums = [];
    for (let i = 1; i <= lines; i++) nums.push(i);
    lineNumbers.textContent = nums.join('\n');
}

// Keep line numbers scroll in sync with textarea
sqlInput.addEventListener('scroll', () => {
    lineNumbers.style.transform = `translateY(-${sqlInput.scrollTop}px)`;
});

sqlInput.addEventListener('input', () => {
    updateLineNumbers();
    charCount.textContent = `${sqlInput.value.length} ký tự`;
});

// Tab support inside textarea
sqlInput.addEventListener('keydown', (e) => {
    if (e.key === 'Tab') {
        e.preventDefault();
        const start = sqlInput.selectionStart;
        const end = sqlInput.selectionEnd;
        sqlInput.value = sqlInput.value.substring(0, start) + '  ' + sqlInput.value.substring(end);
        sqlInput.selectionStart = sqlInput.selectionEnd = start + 2;
        updateLineNumbers();
    }

    // Ctrl+Enter → run
    if ((e.ctrlKey || e.metaKey) && e.key === 'Enter') {
        e.preventDefault();
        runQuery();
    }
});

// Initial
updateLineNumbers();

// --------------- RUN QUERY ---------------
runBtn.addEventListener('click', runQuery);

async function runQuery() {
    const sql = sqlInput.value.trim();
    if (!sql) {
        showToast('Vui lòng nhập câu lệnh SQL trước khi chạy.', 'error');
        return;
    }

    editorStatus.textContent = 'Đang thực thi...';
    runBtn.disabled = true;
    showLoading();

    try {
        const API_BASE = window.location.origin;
        const response = await fetch(`${API_BASE}/api/sql/execute`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ query: sql }),
        });

        const result = await response.json();

        if (result.status === 'error') {
            displayError(result.text);
            editorStatus.textContent = 'Lỗi';
            showToast('Truy vấn thất bại.', 'error');
        } else {
            displayResult(result);
            editorStatus.textContent = 'Thực thi thành công';
            showToast('Truy vấn hoàn tất!', 'success');
        }
    } catch (err) {
        displayError('Không thể kết nối tới server: ' + err.message);
        editorStatus.textContent = 'Lỗi kết nối';
        showToast('Không thể kết nối tới server.', 'error');
    } finally {
        runBtn.disabled = false;
    }
}

// --------------- CLEAR ---------------
clearBtn.addEventListener('click', () => {
    sqlInput.value = '';
    updateLineNumbers();
    charCount.textContent = '0 ký tự';
    editorStatus.textContent = 'Sẵn sàng';
    resetResult();
    showToast('Đã xoá truy vấn.', 'success');
});

// --------------- SIMULATE SQL ---------------
// This is a basic client-side simulation that recognises simple statements
// and returns mock data. Replace this with a real backend fetch when ready.

function simulateSQL(sql) {
    const upper = sql.toUpperCase().replace(/\s+/g, ' ').trim();

    // DDL statements
    if (/^CREATE\s/.test(upper) || /^ALTER\s/.test(upper) || /^DROP\s/.test(upper)) {
        return {
            type: 'message',
            status: 'success',
            text: `Câu lệnh DDL thực thi thành công.\n\n> ${sql.split('\n')[0]}...`,
        };
    }

    // DML non-select
    if (/^INSERT\s/.test(upper)) {
        const rows = (sql.match(/\),/g) || []).length + 1;
        return { type: 'message', status: 'success', text: `Đã chèn ${rows} dòng thành công.` };
    }
    if (/^UPDATE\s/.test(upper)) {
        return { type: 'message', status: 'success', text: 'Cập nhật thành công. Số dòng bị ảnh hưởng: 1' };
    }
    if (/^DELETE\s/.test(upper)) {
        return { type: 'message', status: 'success', text: 'Xoá thành công. Số dòng bị ảnh hưởng: 1' };
    }

    // SELECT — try to extract table name and return mock data
    const selectMatch = upper.match(/FROM\s+([A-Z_][A-Z0-9_]*)/);
    if (/^SELECT\s/.test(upper) && selectMatch) {
        const tableName = selectMatch[1];
        return generateMockTable(tableName);
    }

    // Fallback for any other SELECT (e.g. SELECT 1+1)
    if (/^SELECT\s/.test(upper)) {
        return {
            type: 'table',
            columns: ['Result'],
            rows: [['(expression)']],
        };
    }

    // USE / GO
    if (/^(USE|GO)\b/.test(upper)) {
        return { type: 'message', status: 'success', text: 'Lệnh thực thi thành công.' };
    }

    throw new Error('Không nhận diện được câu lệnh SQL. Vui lòng kiểm tra cú pháp.');
}

// --------------- MOCK DATA GENERATOR ---------------
const MOCK_TABLES = {
    ACCOUNTS: {
        columns: ['accountId', 'username', 'email', 'phoneNumber', 'status', 'createdAt'],
        rows: [
            [1, 'nguyenvana', 'vana@email.com', '0901234567', 'Active', '2026-01-15 08:30:00'],
            [2, 'tranthib', 'thib@email.com', '0912345678', 'Active', '2026-01-20 14:22:00'],
            [3, 'levanc', 'vanc@email.com', '0923456789', 'Inactive', '2026-02-01 09:10:00'],
            [4, 'phamthid', 'thid@email.com', '0934567890', 'Active', '2026-02-10 16:45:00'],
            [5, 'hoange', 'hoange@email.com', '0945678901', 'Banned', '2026-03-01 11:00:00'],
        ],
    },
    ROLES: {
        columns: ['roleId', 'roleName', 'description'],
        rows: [
            [1, 'Admin', 'Quản trị hệ thống'],
            [2, 'Customer', 'Khách hàng'],
            [3, 'Shop', 'Chủ gian hàng'],
            [4, 'Shipper', 'Người giao hàng'],
        ],
    },
    PROFILES: {
        columns: ['profileId', 'fullName', 'dateOfBirth', 'gender', 'citizenID'],
        rows: [
            [1, 'Nguyễn Văn A', '1995-03-15', 'Nam', '012345678901'],
            [2, 'Trần Thị B', '1998-07-22', 'Nữ', '012345678902'],
            [3, 'Lê Văn C', '2000-11-01', 'Nam', '012345678903'],
            [4, 'Phạm Thị D', '1992-05-30', 'Nữ', '012345678904'],
            [5, 'Hoàng E', '1997-09-14', 'Khác', null],
        ],
    },
    CATEGORIES: {
        columns: ['categoryId', 'categoryName', 'categoryDescription'],
        rows: [
            [1, 'Điện thoại', 'Smartphone các loại'],
            [2, 'Laptop', 'Máy tính xách tay'],
            [3, 'Tablet', 'Máy tính bảng'],
            [4, 'Phụ kiện', 'Phụ kiện công nghệ'],
            [5, 'Âm thanh', 'Tai nghe, loa'],
            [6, 'Đồng hồ thông minh', 'Smartwatch'],
        ],
    },
    BRANDS: {
        columns: ['brandId', 'brandName'],
        rows: [
            [1, 'Apple'], [2, 'Samsung'], [3, 'Sony'], [4, 'Dell'], [5, 'Xiaomi'], [6, 'Asus'],
        ],
    },
    PRODUCTS: {
        columns: ['productId', 'productName', 'categoryId', 'brandId', 'shopId'],
        rows: [
            [1, 'iPhone 16 Pro Max', 1, 1, 1],
            [2, 'Galaxy S25 Ultra', 1, 2, 2],
            [3, 'MacBook Pro M4', 2, 1, 1],
            [4, 'iPad Air M3', 3, 1, 1],
            [5, 'Sony WH-1000XM6', 5, 3, 3],
            [6, 'Dell XPS 15', 2, 4, 4],
        ],
    },
    ORDERS: {
        columns: ['orderId', 'orderAt', 'totalPrice', 'status', 'customerId'],
        rows: [
            [1, '2026-02-15 10:30:00', '34990000', 'Hoàn thành', 1],
            [2, '2026-02-20 14:15:00', '29990000', 'Đang giao', 2],
            [3, '2026-03-01 09:00:00', '15990000', 'Chờ xác nhận', 3],
            [4, '2026-03-05 16:45:00', '8990000', 'Đã xác nhận', 1],
        ],
    },
    VARIANTS: {
        columns: ['variantId', 'SKU', 'sellPrice', 'status', 'productId'],
        rows: [
            [1, 'IPH16PM-256-BLK', '34990000', 'Đang bán', 1],
            [2, 'IPH16PM-512-WHT', '39990000', 'Đang bán', 1],
            [3, 'GS25U-256-BLU', '29990000', 'Đang bán', 2],
            [4, 'MBP-M4-512', '49990000', 'Đang bán', 3],
            [5, 'IPAD-M3-256', '15990000', 'Đang bán', 4],
            [6, 'WH1000XM6-BLK', '8990000', 'Đang bán', 5],
        ],
    },
    SHOPS: {
        columns: ['profileId', 'shopName', 'taxCode', 'businessLicense'],
        rows: [
            [1, 'Apple Store Vietnam', 'TX001', 'BL-001'],
            [2, 'Samsung Official', 'TX002', 'BL-002'],
            [3, 'Sony Center', 'TX003', 'BL-003'],
            [4, 'Dell Pro Store', 'TX004', 'BL-004'],
        ],
    },
    CUSTOMERS: {
        columns: ['profileId', 'memberTier', 'rewardPoints'],
        rows: [
            [1, 'Vàng', 1250],
            [2, 'Bạc', 680],
            [3, 'Đồng', 120],
            [4, 'Bạch kim', 3500],
        ],
    },
    VOUCHERS: {
        columns: ['voucherId', 'voucherName', 'voucherCode', 'startAt', 'endAt', 'applyFor'],
        rows: [
            [1, 'Giảm 10% đơn từ 5tr', 'TECH2026', '2026-01-01', '2026-12-31', 'product'],
            [2, 'Freeship đơn từ 1tr', 'FREESHIP1M', '2026-01-01', '2026-06-30', 'shipment'],
            [3, 'Flash Sale 20%', 'FLASH20', '2026-03-01', '2026-03-15', 'product'],
        ],
    },
};

function generateMockTable(tableName) {
    const key = tableName.toUpperCase();
    const mock = MOCK_TABLES[key];
    if (mock) {
        return { type: 'table', columns: mock.columns, rows: mock.rows };
    }
    // Unknown table — return empty result
    return {
        type: 'table',
        columns: ['(no data)'],
        rows: [],
    };
}

// --------------- DISPLAY HELPERS ---------------
function showLoading() {
    resultPlaceholder.style.display = 'none';
    resultTableWrapper.style.display = 'none';
    resultMessage.style.display = 'none';

    const body = document.querySelector('.result-body');
    let loader = document.getElementById('resultLoader');
    if (!loader) {
        loader = document.createElement('div');
        loader.id = 'resultLoader';
        loader.className = 'spinner-overlay';
        loader.innerHTML = '<div class="spinner"></div><span class="spinner-text">Đang thực thi...</span>';
        body.appendChild(loader);
    }
    loader.style.display = 'flex';
}

function hideLoading() {
    const loader = document.getElementById('resultLoader');
    if (loader) loader.style.display = 'none';
}

function resetResult() {
    resultPlaceholder.style.display = '';
    resultTableWrapper.style.display = 'none';
    resultMessage.style.display = 'none';
    resultStatus.textContent = '';
    rowCount.textContent = '';
    exportBtn.disabled = true;
    lastResult = null;
    hideLoading();
}

function displayResult(result) {
    hideLoading();
    lastResult = result;

    if (result.type === 'table') {
        resultPlaceholder.style.display = 'none';
        resultMessage.style.display = 'none';
        resultTableWrapper.style.display = '';

        // Build thead
        resultHead.innerHTML = '';
        const tr = document.createElement('tr');
        result.columns.forEach((col) => {
            const th = document.createElement('th');
            th.textContent = col;
            tr.appendChild(th);
        });
        resultHead.appendChild(tr);

        // Build tbody — reuse second element with same id (the one inside table)
        const tbody = resultTableWrapper.querySelector('tbody');
        tbody.innerHTML = '';
        result.rows.forEach((row) => {
            const tr = document.createElement('tr');
            row.forEach((cell) => {
                const td = document.createElement('td');
                if (cell === null || cell === undefined) {
                    td.textContent = 'NULL';
                    td.classList.add('null-value');
                } else {
                    td.textContent = cell;
                }
                tr.appendChild(td);
            });
            tbody.appendChild(tr);
        });

        rowCount.textContent = `${result.rows.length} dòng`;
        resultStatus.textContent = `${result.columns.length} cột`;
        exportBtn.disabled = result.rows.length === 0;
    } else if (result.type === 'message') {
        resultPlaceholder.style.display = 'none';
        resultTableWrapper.style.display = 'none';
        resultMessage.style.display = '';
        resultMessage.className = `result-message ${result.status}`;
        resultMessage.textContent = result.text;
        resultStatus.textContent = result.status === 'success' ? 'Thành công' : 'Lỗi';
        rowCount.textContent = '';
        exportBtn.disabled = true;
    }
}

function displayError(msg) {
    hideLoading();
    resultPlaceholder.style.display = 'none';
    resultTableWrapper.style.display = 'none';
    resultMessage.style.display = '';
    resultMessage.className = 'result-message error';
    resultMessage.textContent = `❌ Lỗi: ${msg}`;
    resultStatus.textContent = 'Lỗi';
    rowCount.textContent = '';
    exportBtn.disabled = true;
    lastResult = null;
}

// --------------- EXPORT CSV ---------------
exportBtn.addEventListener('click', () => {
    if (!lastResult || lastResult.type !== 'table' || lastResult.rows.length === 0) return;

    const csvRows = [];
    csvRows.push(lastResult.columns.join(','));
    lastResult.rows.forEach((row) => {
        csvRows.push(row.map((c) => {
            const val = c === null || c === undefined ? '' : String(c);
            return val.includes(',') ? `"${val}"` : val;
        }).join(','));
    });

    const blob = new Blob(['\uFEFF' + csvRows.join('\n')], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = 'query_result.csv';
    a.click();
    URL.revokeObjectURL(url);
    showToast('Đã xuất file CSV!', 'success');
});

// --------------- TOAST ---------------
function showToast(message, type = 'info') {
    const toast = document.createElement('div');
    toast.className = `toast ${type}`;
    toast.textContent = message;
    toastContainer.appendChild(toast);

    setTimeout(() => {
        toast.style.animation = 'slideOutToast 0.3s ease forwards';
        toast.addEventListener('animationend', () => toast.remove());
    }, 2500);
}
