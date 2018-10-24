/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLBmKcj5.aml, Fri Oct 12 18:11:32 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000A81 (2689)
 *     Revision         0x02
 *     Checksum         0xCD
 *     OEM ID           "hack"
 *     OEM Table ID     "AW17-RJ"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "AW17-RJ", 0x00000000)
{
    External (_PR_.CPU0, DeviceObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.DPCH, DeviceObj)
    External (_SB_.PCI0.HDAU, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.MCHC, DeviceObj)
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)
    External (_SB_.PCI0.PEG1.EGPU, DeviceObj)
    External (_SB_.PCI0.PEG2.TBLT, DeviceObj)
    External (_SB_.PCI0.PMCR, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.ENET, DeviceObj)
    External (_SB_.PCI0.RP06.ARPT, DeviceObj)
    External (_SB_.PCI0.RP09.NVME, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)
    External (GPBS, UnknownObj)
    External (RMCF.BKLT, IntObj)
    External (RMCF.FBTP, IntObj)
    External (RMCF.GRAN, IntObj)
    External (RMCF.LEVW, IntObj)
    External (RMCF.LMAX, IntObj)
    External (SDS0, UnknownObj)
    External (SHAP, UnknownObj)
    External (SPTH, UnknownObj)
    External (USBH, UnknownObj)

    Scope (_SB.PCI0.PEG2.TBLT)
    {
        Device (TBL0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (NHI0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@1"
                        }, 

                        "device_type", 
                        Buffer (0x15)
                        {
                            "Thunderbolt Ethernet"
                        }, 

                        "model", 
                        Buffer (0x29)
                        {
                            "Thunderbolt 3 JHL6340 Ethernet controller"
                        }
                    })
                }
            }
        }

        Device (TBL1)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Device (TBDP)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }
        }

        Device (TBL2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Device (TBLU)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@3"
                        }, 

                        "device_type", 
                        Buffer (0x11)
                        {
                            "Thunderbolt XHCI"
                        }, 

                        "model", 
                        Buffer (0x25)
                        {
                            "Thunderbolt 3 JHL6340 XHCI controller"
                        }
                    })
                }
            }
        }
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Realtek ALC298 Audio Controller"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x0B, 0x00, 0x00, 0x00                           // ....
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation Graphics HD 630"
            }
        })
    }

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x0F)
            {
                "IMEI controller"
            }, 

            "model", 
            Buffer (0x21)
            {
                "Intel Corporation IMEI controller"
            }
        })
    }

    Method (_SB.PCI0.PMCR._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x17)
            {
                "Power Manage controller"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Intel Corporation PMC controller"
            }
        })
    }

    Method (_SB.PCI0.RP05.ENET._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@5"
            }, 

            "model", 
            Buffer (0x3F)
            {
                "Qualcomm Atheros Killer E2500 PCI Express Gigabit Ethernet"
            }
        })
    }

    Method (_SB.PCI0.RP06.ARPT._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "device_type", 
            Buffer (0x13)
            {
                "Wireless controller"
            }, 

            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@6"
            }, 

            "model", 
            Buffer (0x33)
            {
                "Broadcom BCM4352 802.11ac Wireless Network Adapter"
            }
        })
    }

    Method (_SB.PCI0.RP09.NVME._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@9"
            }, 

            "model", 
            Buffer (0x2E)
            {
                "Samsung Electronics NVMe SSD Controller SM961"
            }
        })
    }

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x3A)
            {
                "Intel Corporation 100 Series Chipset AHCI SATA controller"
            }
        })
    }

    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x21)
            {
                "Intel Corporation SBUS controller"
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x45)
            {
                "Intel Corporation 100 Series Chipset Family USB xHCI Host Controller"
            }
        })
    }
}

