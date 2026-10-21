## `influxdb:meta`

```console
$ docker pull influxdb@sha256:e804a11d96483e652cb649032a086bae99858579eeaa51c10d73c4e936a75edc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:45b3fc36d57432aceffb257fb882c0996f89e30f0267870a3ee1939c1de7aac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91779619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c23291e79fdda41933b69f489acdef33e4a49f15666910787ae4d40e68b2856`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:10 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 21 Oct 2026 01:33:10 GMT
ENV INFLUXDB_PR=
# Wed, 21 Oct 2026 01:33:10 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 21 Oct 2026 01:33:10 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:10 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 21 Oct 2026 01:33:10 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 21 Oct 2026 01:33:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 21 Oct 2026 01:33:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:33:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:33:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfab016c03178fc5c9dabdc93f1378e0b11614da102716ff0891346a11b1e52a`  
		Last Modified: Wed, 21 Oct 2026 01:33:20 GMT  
		Size: 19.4 MB (19385231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee40b6f97c497a1be06c809181b9cbbff536a1185d2ffd2a7a869443a5b5722`  
		Last Modified: Wed, 21 Oct 2026 01:33:19 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a211458113b97399702eddcc6ff8b8303a4c1dcb79b758b3cd5ac254119a256f`  
		Last Modified: Wed, 21 Oct 2026 01:33:19 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:b03e3e93721c2c45d04fc17306f23e2c06a87155d9b4c4d61fa9cde77fc83dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4609096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae519d4aa990d078cffbac3095159d148036e69635a730c5fbd282b475b5fdb`

```dockerfile
```

-	Layers:
	-	`sha256:08d5227b73a4c02668ab246ffb4dfe002742ae1215b73d775d136a9fc209707f`  
		Last Modified: Wed, 21 Oct 2026 01:33:19 GMT  
		Size: 4.6 MB (4596432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bacb88e3c01294d9b6cd30449e3ff518651b1c766ed8560e1f85ae0744776ab`  
		Last Modified: Wed, 21 Oct 2026 01:33:19 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json
