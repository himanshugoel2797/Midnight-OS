#include "../Common/Config.h"

/* Only use this abstraction layer if the kernel has been built to only use the PIC
 * and therefore is single core
 */
#ifdef USE_PIC

#include "HAL.h"
#include "../Core/PIC.h"
#include "../Core/Core.h"

void HAL::Initialize()
{
    //Initialize the Master and Slave PICs
    Core::OutByte(PIC_MASTER_COMMAND, 0x11);
    Core::OutByte(PIC_SLAVE_COMMAND, 0x11);
    Core::OutByte(PIC_MASTER_DATA, 0x20);
    Core::OutByte(PIC_SLAVE_DATA, 0x28);
    Core::OutByte(PIC_MASTER_DATA,0x04);
    Core::OutByte(PIC_SLAVE_DATA, 0x02);
    Core::OutByte(PIC_MASTER_DATA, 0x01);
    Core::OutByte(PIC_SLAVE_DATA, 0x0);
    Core::OutByte(PIC_MASTER_DATA, 0x0);
 
}

#endif
