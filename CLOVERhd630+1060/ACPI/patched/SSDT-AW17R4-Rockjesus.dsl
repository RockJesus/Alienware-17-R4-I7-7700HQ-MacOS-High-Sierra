/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLeXCTHn.aml, Fri Aug 10 23:22:28 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000EB0 (3760)
 *     Revision         0x02
 *     Checksum         0x91
 *     OEM ID           "APPLE "
 *     OEM Table ID     "RJ-AW17"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "RJ-AW17", 0x00000000)
{
    External (_PR_.CPU0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.DPCH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.KPTS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.GFX0.PCIB.TBLT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.TBLT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PMCR, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.ENET, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06.ARPT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP17, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP17.NVME, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATA, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SPTS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)    // (from opcode)
    External (RMCF.BKLT, IntObj)    // (from opcode)
    External (RMCF.FBTP, IntObj)    // (from opcode)
    External (RMCF.GRAN, IntObj)    // (from opcode)
    External (RMCF.LEVW, IntObj)    // (from opcode)
    External (RMCF.LMAX, IntObj)    // (from opcode)
    External (SPTH, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.DPCH)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0A)
                {
                    "AAPL,slot-name", 
                    Buffer (0x0C)
                    {
                        "PCI-Express"
                    }, 

                    "device_type", 
                    Buffer (0x16)
                    {
                        "Nvidia HDMI controler"
                    }, 

                    "model", 
                    Buffer (0x3E)
                    {
                        "Intel Corporation 100 Series Chipset Family Thermal Subsystem"
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x0B, 0x00, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.HDAU)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0A)
                {
                    "AAPL,slot-name", 
                    Buffer (0x0C)
                    {
                        "PCI-Express"
                    }, 

                    "device_type", 
                    Buffer (0x15)
                    {
                        "Intel HDMI controler"
                    }, 

                    "model", 
                    Buffer (0x2F)
                    {
                        "Intel Corporation HD 630 HDMI Audio Controller"
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x0B, 0x00, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.HDEF)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
                         0x0B, 0x00, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.IMEI)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
                        "IMEI controler"
                    }, 

                    "model", 
                    Buffer (0x21)
                    {
                        "Intel Corporation IMEI controler"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.PMCR)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
                        "Power Manage controler"
                    }, 

                    "model", 
                    Buffer (0x20)
                    {
                        "Intel Corporation PMC controler"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.SBUS)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
                        "Intel Corporation SBUS controler"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.MCHC)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
                    Buffer (0x44)
                    {
                        "Intel Corporation 7th Gen Core Processor Host Bridge/DRAM Registers"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.LPCB)
        {
            OperationRegion (RMP0, PCI_Config, 0x02, 0x02)
            Field (RMP0, AnyAcc, NoLock, Preserve)
            {
                LDID,   16
            }

            Name (LPDL, Package (0x19)
            {
                0x1E49, 
                Zero, 
                Package (0x08)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x42, 0x1E, 0x00, 0x00                         
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,1e42"
                    }, 

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
                }, 

                0x8C46, 
                0x8C49, 
                0x8C4A, 
                0x8C4C, 
                0x8C4E, 
                0x8C4F, 
                0x8C50, 
                0x8C52, 
                0x8C54, 
                0x8C56, 
                0x8C5C, 
                0x8CC3, 
                Zero, 
                Package (0x08)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x4B, 0x8C, 0x00, 0x00                         
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,8c4b"
                    }, 

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
                }, 

                0x8CC6, 
                0x9D48, 
                0x9D58, 
                0xA14E, 
                0xA154, 
                0xA2C5, 
                Zero, 
                Package (0x08)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0xC1, 0x9C, 0x00, 0x00                         
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,9cc1"
                    }, 

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
                }
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Store (Match (LPDL, MEQ, ^LDID, MTR, Zero, Zero), Local0)
                If (LNotEqual (Ones, Local0))
                {
                    Store (Match (LPDL, MEQ, Zero, MTR, Zero, Add (Local0, One)), Local0)
                    Return (DerefOf (Index (LPDL, Add (Local0, One))))
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
                        "Intel Corporation LPC controler"
                    }, 

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
        }

        Scope (\_SB.PCI0.RP05.ENET)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
        }

        Scope (\_SB.PCI0.RP06.ARPT)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x08)
                {
                    "compatible", 
                    "pci14e4,43a0", 
                    "device_type", 
                    Buffer (0x13)
                    {
                        "Wireless controler"
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
        }

        Scope (\_SB.PCI0.RP17.NVME)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x04)
                {
                    "AAPL,slot-name", 
                    Buffer (0x0F)
                    {
                        "PCI-Express@17"
                    }, 

                    "model", 
                    Buffer (0x2E)
                    {
                        "Samsung Electronics NVMe SSD Controller SM961"
                    }
                })
            }
        }

        Scope (\_SB.PCI0.SATA)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
        }

        Scope (\_SB.PCI0.XHC)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
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
    }
}

