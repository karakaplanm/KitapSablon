# KitapSablon
Latex için kitap şablonu

```
graph TD
    A[Enter Chart Definition] --> B(Preview)
    B --> C{decide}
    C --> D[Keep]
    C --> E[Edit Definition]
    E --> B
    D --> F[Save Image and Code]
    F --> B
```


Bütün bölümleri kitap haline getirmek için.

``$ make kitap``

Sadece bir bölümü derlemek için

``$ make chapter 2``

veya

``$ make bolum 2``
