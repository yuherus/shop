package com.example.demo.dao;

import java.util.List;

public interface DAOInterface<T> {
    public List<T> selectAll();

    public T selectById(String id);

    public boolean insert(T t);

    public boolean update(T t);

    public boolean delete(T t);
}
