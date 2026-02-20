'use server';

import { getDb } from '@/lib/db';

export interface Product {
    id: number;
    nombre: string;
    descripcion: string | null;
    precio: number;
    categoria: string;
    categoria_id: number;
    imagen_url: string | null;
    disponible: number;
    stock: number;
    gestionar_stock: number;
    ingredientes: string | null;
}

export async function getMenu(): Promise<Product[]> {
    const query = `
        SELECT 
            p.*, 
            c.nombre as categoria 
        FROM productos p
        LEFT JOIN categorias c ON p.categoria_id = c.id
        WHERE p.disponible = 1 
        AND (p.gestionar_stock = 0 OR p.stock > 0)
        ORDER BY c.orden, p.nombre
    `;

    try {
        const db = getDb();
        const results = db.prepare(query).all() as Product[];
        return results;
    } catch (e) {
        console.error("Error in getMenu:", e);
        return [];
    }
}
