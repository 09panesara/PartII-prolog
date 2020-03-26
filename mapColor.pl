diff(red, green).
diff(red, blue).
diff(red, yellow).
diff(green, red).
diff(green, blue).
diff(green, yellow).
diff(blue, yellow).
diff(blue, green).
diff(blue, red).
diff(yellow, red).
diff(yellow, blue).
diff(yellow, green).

:- diff(C1, C5),
diff(C1, C6),
diff(C1, C4),
diff(C1, C2),
diff(C2, C1),
diff(C2, C4),
diff(C2, C7),
diff(C2, C3),
diff(C3, C7),
diff(C3, C8),
diff(C4, C1),
diff(C4, C2),
diff(C4, C7),
diff(C4, C6),
diff(C5, C1),
diff(C5, C6),
diff(C6, C1),
diff(C6, C5),
diff(C6, C4),
diff(C6, C7),
diff(C6, C8),
diff(C7, C4),
diff(C7, C6),
diff(C7, C2),
diff(C7, C3),
diff(C7, C8),
diff(C8, C6),
diff(C8, C7),
diff(C8, C3).

:- print(C1),
print(C2),
print(C3),
print(C4),
print(C5),
print(C6),
print(C7),
print(C8).
