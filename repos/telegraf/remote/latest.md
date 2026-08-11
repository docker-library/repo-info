## `telegraf:latest`

```console
$ docker pull telegraf@sha256:9c3a1231b3eab67d9a54fccc0d5a5fac5161744998c88848fc62266ea0fd7994
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:426583fc1e926c739669ee1afac924dab9d55240bfcb5a66f42290fcfffccd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177746646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fba4fea15ea0bd1d0d4b6015a3ac3aa4b17c5ebff4c17dff725a5abac11ca6`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:03:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:03:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:03:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:03:35 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:03:35 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb5f0d471324a8901e8d05a871dbb4d845462ad17dca68f13b9e44d161535b0`  
		Last Modified: Tue, 11 Aug 2026 18:03:54 GMT  
		Size: 19.3 MB (19284487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da90442d9fa4156358c773c0556f35d57f64c229a428615a57d81b1a360ac692`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba716f91507ed46caacffb5c59b9d166819b54b62d845c1f2f13aa16abc4da3`  
		Last Modified: Tue, 11 Aug 2026 18:03:55 GMT  
		Size: 85.9 MB (85915229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbe4b51bb58011d561bb6f94ad99b18bd0e564d8178fb788c45428d196d302`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:f8f7876be6dbf83d0b78186dd6b6ee37d3ee1abc3f9c938a77e4e0caa5bdaf0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a899cffc3f1a5f169313b48433d43014291afeace2d4e6f060319fbc460d73f6`

```dockerfile
```

-	Layers:
	-	`sha256:784f9c34fd828a4957922f08c25b8895c862fa37a0c5651f8c38eae95017f3bf`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 6.7 MB (6684520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd58fd80da85f70f1fec5b2f986df123a43ea509aa45e18bbfe84019a2cf0e9`  
		Last Modified: Tue, 11 Aug 2026 18:03:53 GMT  
		Size: 14.8 KB (14769 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:606b3a128fd13a946b6732cdfe725b855d349f7b9bee85e03f38419b3c9848ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163971298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b7ade7e6c23a5207891021ab7c5fa87e58685df8809f211873e350bb24dad1`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:05:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENV TELEGRAF_VERSION=1.39.3
# Tue, 11 Aug 2026 18:05:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Tue, 11 Aug 2026 18:05:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 11 Aug 2026 18:05:15 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Tue, 11 Aug 2026 18:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c949dcce839c396b9c787b9ee92aa64491e7bfa688d012146b8d6ae5489303a2`  
		Last Modified: Tue, 11 Aug 2026 18:05:34 GMT  
		Size: 17.9 MB (17949914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce988284365a47fea44961a804c44783564a096ca6d15593a3e2fd020036abb`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1880d8f0941d8c028125d7c256c94dbd260972ff5fb86a94e870156174dc291c`  
		Last Modified: Tue, 11 Aug 2026 18:05:35 GMT  
		Size: 79.9 MB (79862860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8693f3e5f1efc476420c74a56b4ae6e52aa764b05858b8d5f93a76768f921165`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:6303fcc2a795475067c2e997ad1fbc4fc8cbe659de17f5bb645eb8a7ea361388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6694798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883a0c571ec4c56eeed0422049dbc5bb733bf328e2b33721bdc88396b95bea22`

```dockerfile
```

-	Layers:
	-	`sha256:1683f798602c8deeb13708450b0bb81f224f8377cdb89047792ee892abdfbf52`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 6.7 MB (6679930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8713cc45094f9392aa2eb9054bcbe67c222ca752ee734f957d73048a37f5ebf4`  
		Last Modified: Tue, 11 Aug 2026 18:05:33 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2ed2d5cdc81c82754bccf6b2cfb8cdcd899ecf32d939e220a17e9c68007cb01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3052849b841eecaa7fb69fbeae10bffdacf9b26ccab1890beac262f867f78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:52:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENV TELEGRAF_VERSION=1.39.2
# Wed, 05 Aug 2026 01:52:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 05 Aug 2026 01:52:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:52:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:52:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8a7a5d579a57055df04b09d73e0cfbe6327100f11e939928d40cb30ecb173c`  
		Last Modified: Wed, 05 Aug 2026 01:53:12 GMT  
		Size: 18.9 MB (18885846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4704e27536e8c153e241f149d4e0e120b336eee72335bb387b4b5824f90f3e7`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c35c63be5da8a1065c84e18774dd418a2f34759631d539c1ab80f292921d3d7`  
		Last Modified: Wed, 05 Aug 2026 01:53:13 GMT  
		Size: 75.1 MB (75131026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5370c5f561af77cbdaf59ab73a55c59b8dcb0de378aaa9231fe5316d8e4d7cda`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:02fe7224a48da51e55b3b959ca197dac85172fc4c7cf6f1f999269dd2a52b151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a398402b56291b33bc20653c0335622e84c1db7625ae7e00511a17cf68b4bf89`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd127b284aae28cd7283b7989e68d63e3cd8702581ee92f2a48024e9e2c043`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba55307681a4d62938eba94e41526f37f760bd7decf07e3fa29ce1282d69446d`  
		Last Modified: Wed, 05 Aug 2026 01:53:11 GMT  
		Size: 14.8 KB (14850 bytes)  
		MIME: application/vnd.in-toto+json
