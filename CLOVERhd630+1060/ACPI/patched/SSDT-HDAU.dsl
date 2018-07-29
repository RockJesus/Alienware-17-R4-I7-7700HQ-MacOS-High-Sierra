/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20171110 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLSxd7pX.aml, Sun Apr 22 18:57:30 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003CD (973)
 *     Revision         0x02
 *     Checksum         0x99
 *     OEM ID           "hack"
 *     OEM Table ID     "HDAU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20171110 (538382608)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HDAU", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.B0D4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Scope (\_SB.PCI0.B0D4)
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

                Return (Package (0x10)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "HDMI Audio Controller", 
                    "model", 
                    Buffer (0x23)
                    {
                        "Nvidia 1060 HDMI Audio Controller"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "HDMI Controller"
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
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                         
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x03, 0x19, 0x00, 0x00                         
                    }
                })
            }
        }

        Device (HDAU)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "HDMI Audio Controller", 
                    "model", 
                    Buffer (0x23)
                    {
                        "Intel HD 630 HDMI Audio Controller"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "HDMI Controller"
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
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                         
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x31, 0xA1, 0x00, 0x00                         
                    }
                })
            }
        }

        
        
    }
}

