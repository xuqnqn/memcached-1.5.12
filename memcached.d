#!/usr/bin/dtrace -s

#pragma D option quiet

BEGIN
{
    trace("Begin trace memcached!\n");
}

memcached*:::slabs__allocate
{
    printf("slabs__allocate size:%d slabclass:%d slabsize:%d, ptr: 0x%x\n", size, slabclass, slabsize, ptr);
}

END
{
    printf("End trace!");
}
