#!/bin/sh
convert_value_units () {
  line=$(echo "$full_line" | tr -s ' ')
  field=$(echo "$line" ' ' | cut -d' ' -f1)
  value=$(echo "$line" ' ' | cut -d' ' -f3)
  units=$(echo "$line" | cut -d ' ' -f4)
  echo "  \"$field\": [$value,\"$units\"],"
}
echo '{'
apcaccess | while read full_line
do
  case "$full_line" in
    'LINEV'*)
      convert_value_units "$full_line"
      ;;
    'BCHARGE'*)
      convert_value_units "$full_line"
      ;;
    'TIMELEFT'*)
      convert_value_units "$full_line"
      ;;
  esac
done
echo "  \"UUID\": \"09d2f5a9-a888-46ad-9609-f418e6855816\""
echo '}'
