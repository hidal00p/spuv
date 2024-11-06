# Latch prototype in python

class Latch:

    def __init__(self, s = False, r = False, q = False, q_bar = True):
        self._s = s
        self._r = r
        self._q = q
        self._q_bar = q_bar

    @property
    def s(self):
        return self._s

    @s.setter
    def s(self, val):
        if val:
            self._q = True
            self._q_bar = False
            self.r = False
        self._s = val

    @property
    def r(self):
        return self._r

    @r.setter
    def r(self, val):
        if val:
            self._q_bar = True
            self._q = False
            self.s = False
        self._r = val

    @property
    def q(self):
        return self._q

    @property
    def q_bar(self):
        return self._q_bar

    def __str__(self):
        repres = "S: "
        repres += "1\n" if self.s else "0\n"

        repres += "R: "
        repres += "1\n" if self.r else "0\n"

        repres += "Q: "
        repres += "1\n" if self.q else "0\n"

        repres += "Q_bar: "
        repres += "1\n" if self.q_bar else "0\n"
        return repres
