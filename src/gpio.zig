const MODE = enum(u2) {
    Input,
    Output,
    Alternate,
    Analog,
};

const OTYPE = enum(u1) {
    PushPull,
    OpenDrain,
};

const OSPEED = enum(u2) {
    LowSpeed,
    MediumSpeed,
    FastSpeed,
    HighSpeed,
};

const PUPD = enum(u2) {
    NoPUPD,
    PullUp,
    PullDown,
};

const LCKK = enum(u1) {
    NotLocked,
    Locked,
};

const AFR = enum(u4) {
    AF0,
    AF1,
    AF2,
    AF3,
    AF4,
    AF5,
    AF6,
    AF7,
    AF8,
    AF9,
    AF10,
    AF11,
    AF12,
    AF13,
    AF14,
    AF15,
};

const GPIO = packed struct {
    MODER: packed struct {
        MODER0: MODE,
        MODER1: MODE,
        MODER2: MODE,
        MODER3: MODE,
        MODER4: MODE,
        MODER5: MODE,
        MODER6: MODE,
        MODER7: MODE,
        MODER8: MODE,
        MODER9: MODE,
        MODER10: MODE,
        MODER11: MODE,
        MODER12: MODE,
        MODER13: MODE,
        MODER14: MODE,
        MODER15: MODE,
    },

    OTYPER: packed struct {
        OTYPER0: OTYPE,
        OTYPER1: OTYPE,
        OTYPER2: OTYPE,
        OTYPER3: OTYPE,
        OTYPER4: OTYPE,
        OTYPER5: OTYPE,
        OTYPER6: OTYPE,
        OTYPER7: OTYPE,
        OTYPER8: OTYPE,
        OTYPER9: OTYPE,
        OTYPER10: OTYPE,
        OTYPER11: OTYPE,
        OTYPER12: OTYPE,
        OTYPER13: OTYPE,
        OTYPER14: OTYPE,
        OTYPER15: OTYPE,
        __reserved0: u16,
    },

    OSPEEDR: packed struct {
        OSPEEDR0: OSPEED,
        OSPEEDR1: OSPEED,
        OSPEEDR2: OSPEED,
        OSPEEDR3: OSPEED,
        OSPEEDR4: OSPEED,
        OSPEEDR5: OSPEED,
        OSPEEDR6: OSPEED,
        OSPEEDR7: OSPEED,
        OSPEEDR8: OSPEED,
        OSPEEDR9: OSPEED,
        OSPEEDR10: OSPEED,
        OSPEEDR11: OSPEED,
        OSPEEDR12: OSPEED,
        OSPEEDR13: OSPEED,
        OSPEEDR14: OSPEED,
        OSPEEDR15: OSPEED,
    },

    PUPDR: packed struct {
        PUPDR0: PUPD,
        PUPDR1: PUPD,
        PUPDR2: PUPD,
        PUPDR3: PUPD,
        PUPDR4: PUPD,
        PUPDR5: PUPD,
        PUPDR6: PUPD,
        PUPDR7: PUPD,
        PUPDR8: PUPD,
        PUPDR9: PUPD,
        PUPDR10: PUPD,
        PUPDR11: PUPD,
        PUPDR12: PUPD,
        PUPDR13: PUPD,
        PUPDR14: PUPD,
        PUPDR15: PUPD,
    },

    IDR: packed struct {
        ID0: u1,
        ID1: u1,
        ID2: u1,
        ID3: u1,
        ID4: u1,
        ID5: u1,
        ID6: u1,
        ID7: u1,
        ID8: u1,
        ID9: u1,
        ID10: u1,
        ID11: u1,
        ID12: u1,
        ID13: u1,
        ID14: u1,
        ID15: u1,
    },

    ODR: packed struct {
        OD0: u1,
        OD1: u1,
        OD2: u1,
        OD3: u1,
        OD4: u1,
        OD5: u1,
        OD6: u1,
        OD7: u1,
        OD8: u1,
        OD9: u1,
        OD10: u1,
        OD11: u1,
        OD12: u1,
        OD13: u1,
        OD14: u1,
        OD15: u1,
    },

    BSSR: packed struct {
        BS0: u1,
        BS1: u1,
        BS2: u1,
        BS3: u1,
        BS4: u1,
        BS5: u1,
        BS6: u1,
        BS7: u1,
        BS8: u1,
        BS9: u1,
        BS10: u1,
        BS11: u1,
        BS12: u1,
        BS13: u1,
        BS14: u1,
        BS15: u1,
        BR0: u1,
        BR1: u1,
        BR2: u1,
        BR3: u1,
        BR4: u1,
        BR5: u1,
        BR6: u1,
        BR7: u1,
        BR8: u1,
        BR9: u1,
        BR10: u1,
        BR11: u1,
        BR12: u1,
        BR13: u1,
        BR14: u1,
        BR15: u1,
    },

    LCKR: packed struct {
        LCKK0: LCKK,
        LCKK1: LCKK,
        LCKK2: LCKK,
        LCKK3: LCKK,
        LCKK4: LCKK,
        LCKK5: LCKK,
        LCKK6: LCKK,
        LCKK7: LCKK,
        LCKK8: LCKK,
        LCKK9: LCKK,
        LCKK10: LCKK,
        LCKK11: LCKK,
        LCKK12: LCKK,
        LCKK13: LCKK,
        LCKK14: LCKK,
        LCKK15: LCKK,
    },

    AFR: packed struct {
        AFR0: AFR,
        AFR1: AFR,
        AFR2: AFR,
        AFR3: AFR,
        AFR4: AFR,
        AFR5: AFR,
        AFR6: AFR,
        AFR7: AFR,
        AFR8: AFR,
        AFR9: AFR,
        AFR10: AFR,
        AFR11: AFR,
        AFR12: AFR,
        AFR13: AFR,
        AFR14: AFR,
        AFR15: AFR,
    },
};
