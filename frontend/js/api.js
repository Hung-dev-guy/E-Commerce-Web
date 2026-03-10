// API configuration
const API_BASE_URL = 'http://localhost:8000/api';

// Product API calls
async function getProducts() {
    try {
        const response = await fetch(`${API_BASE_URL}/products/`);
        if (!response.ok) {
            throw new Error('Failed to fetch products');
        }
        return await response.json();
    } catch (error) {
        console.error('Error fetching products:', error);
        throw error;
    }
}

async function getProduct(productId) {
    try {
        const response = await fetch(`${API_BASE_URL}/products/${productId}`);
        if (!response.ok) {
            throw new Error('Failed to fetch product');
        }
        return await response.json();
    } catch (error) {
        console.error('Error fetching product:', error);
        throw error;
    }
}

async function createProduct(product) {
    try {
        const response = await fetch(`${API_BASE_URL}/products/`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(product),
        });
        if (!response.ok) {
            throw new Error('Failed to create product');
        }
        return await response.json();
    } catch (error) {
        console.error('Error creating product:', error);
        throw error;
    }
}

// Order API calls
async function getOrders() {
    try {
        const response = await fetch(`${API_BASE_URL}/orders/`);
        if (!response.ok) {
            throw new Error('Failed to fetch orders');
        }
        return await response.json();
    } catch (error) {
        console.error('Error fetching orders:', error);
        throw error;
    }
}

async function getOrder(orderId) {
    try {
        const response = await fetch(`${API_BASE_URL}/orders/${orderId}`);
        if (!response.ok) {
            throw new Error('Failed to fetch order');
        }
        return await response.json();
    } catch (error) {
        console.error('Error fetching order:', error);
        throw error;
    }
}

async function createOrder(order) {
    try {
        const response = await fetch(`${API_BASE_URL}/orders/`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(order),
        });
        if (!response.ok) {
            throw new Error('Failed to create order');
        }
        return await response.json();
    } catch (error) {
        console.error('Error creating order:', error);
        throw error;
    }
}
