set_read_write_partitions() {
  local DYNAMIC_PARTITIONS="system vendor product"
  for DYNAMIC_PARTITION in ${DYNAMIC_PARTITIONS}
  do
     echo "I:OrangeFox: setting $DYNAMIC_PARTITION to read/write" >> /tmp/recovery.log;
     blockdev --setrw /dev/block/mapper/${DYNAMIC_PARTITION};
  done
  unset DYNAMIC_PARTITION;
}

set_read_write_partitions;
exit 0;
#
