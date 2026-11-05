## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:fb89cb6f8b2ce21a32d99c44040b059b81e214a328eae779ed3aeac9645ac5d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:7eae0399011a0122f07fe35987d56daeed367b93168740d08b688a61e470a25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112935034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36767ed0f034428aa959fc3e772967241571c10e04e24dfa8d865148197ceedd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 23:59:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 04 Nov 2026 23:59:12 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Wed, 04 Nov 2026 23:59:23 GMT
ENV KAPACITOR_VERSION=1.8.9
# Wed, 04 Nov 2026 23:59:23 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S kapacitor &&     adduser -S kapacitor -G kapacitor &&     mkdir -m 0750 -p /var/lib/kapacitor &&     chown kapacitor:kapacitor /var/lib/kapacitor # buildkit
# Wed, 04 Nov 2026 23:59:23 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Wed, 04 Nov 2026 23:59:23 GMT
EXPOSE map[9092/tcp:{}]
# Wed, 04 Nov 2026 23:59:23 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 04 Nov 2026 23:59:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:59:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:23 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ea475ab478be7fad20850d8a749038d5c5d13e2d82f703dcb297f50e879a7e`  
		Last Modified: Wed, 04 Nov 2026 23:59:42 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d02b7943ae9684c22a86a15db7bb5e5f40e03cf3a90e0c2aada78171a0392d`  
		Last Modified: Wed, 04 Nov 2026 23:59:42 GMT  
		Size: 293.9 KB (293850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fdfe104bd25972c17bb37bdf06dd7c32e9fee50ccc8968b6d0d2f6644ce48`  
		Last Modified: Wed, 04 Nov 2026 23:59:44 GMT  
		Size: 108.8 MB (108787274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ce71ad0e79d010d68e8cfb930583e1146cad7210f86633b09e5672a57081ab`  
		Last Modified: Wed, 04 Nov 2026 23:59:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c19e65cfbf1b1fbcd27ccd0048fd9f2786e78d6e507f20efd9edeee5004ec9`  
		Last Modified: Wed, 04 Nov 2026 23:59:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:alpine` - unknown; unknown

```console
$ docker pull kapacitor@sha256:d68419a300da548a72b9fe9033219ffce749c4f2d8276b381f1e91960465ef58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 KB (413394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62fb23bd2452f97a4bb8d8648c00c6aa9b4d241f12b4dae2727f43a4b2d7ca2`

```dockerfile
```

-	Layers:
	-	`sha256:abad0d7281286a11cfe1e22985329753c8eb9d834cae48b61bef786f66a3dbff`  
		Last Modified: Wed, 04 Nov 2026 23:59:42 GMT  
		Size: 397.8 KB (397750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63457d0403db3acbddcfaff3b64ef304c92f75fdd54786b67546831450d4517b`  
		Last Modified: Wed, 04 Nov 2026 23:59:42 GMT  
		Size: 15.6 KB (15644 bytes)  
		MIME: application/vnd.in-toto+json
