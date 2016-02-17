/*
 * pcap-dag.c: Packet capture interface for Endace DAG card.
 *
 * The functionality of this code attempts to mimic that of pcap-linux as much
 * as possible.  This code is only needed when compiling in the DAG card code
 * at the same time as another type of device.
 *
 * Author: Richard Littin, Sean Irvine ({richard,sean}@reeltwo.com)
 *
 * @(#) $Header: //DTV/MP_BR/DTV_X_IDTV0801_002158_10_001_158_001/android/ics-4.x/external/libpcap/pcap-dag.h#1 $ (LBL)
 */

pcap_t *dag_open_live(const char *device, int snaplen, int promisc, int to_ms, char *ebuf);
int dag_platform_finddevs(pcap_if_t **devlistp, char *errbuf);