package com.example.demo.model;


import jakarta.persistence.*;
import lombok.Data;
import java.sql.Date;
import java.util.Set;
@Data
@Entity(name = "Users")
@Table(name = "users")
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @Column
    private String firstname;

    @Column
    private String lastname;

    @Column(nullable = false, length = 255, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(name = "birth_date")
    @Temporal(value = TemporalType.DATE)
    private Date birthDate;

    @Column
    private boolean sex;

    @Column
    private String phonenum;

    @Column(name = "acp_email")
    private boolean acpEmail;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Review> reviewList;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Adress> adressList;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Orders> orderList;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "wish_list",
            joinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "product_id", nullable = false, updatable = false) })
    private Set<Product> wishList;

    public Users() {
    }

    public Users(String firstname, String lastname, String email, String password, Date birthDate, boolean sex, String phonenum, boolean acpEmail) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
        this.birthDate = birthDate;
        this.sex = sex;
        this.phonenum = phonenum;
        this.acpEmail = acpEmail;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public boolean isAcpEmail() {
        return acpEmail;
    }

    public void setAcpEmail(boolean acpEmail) {
        this.acpEmail = acpEmail;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + userId +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", birthDate=" + birthDate +
                ", sex=" + sex +
                ", phonenum='" + phonenum + '\'' +
                ", acpEmail=" + acpEmail +
                '}';
    }
}