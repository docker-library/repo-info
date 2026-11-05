## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:10fe8c974752c8088858f012cb47b71f5bb67c5695829be56d87dfbf8e0092b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:6ecc1e2a959fd69ad1de5e1fbcf44c238fc53617900792c8883c99716e0f3ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98516250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bea2e6245bdd355f05ad871331bd53b3d0432bee4dbb55a9d30e8819b5de1e`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:37:13 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:37:19 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:37:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:37:19 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103f0a390a41a827199a2d76035595138fcc15992c38fddc9879a259a9a04974`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e8d00d1da627d59ae0b5f653a285adc8d742da288d1d8b6a31d908e79a32a`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 2.6 MB (2578248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2d9e3e7d504747f933e0eda31ffedf4f168963d9f40ce8522d971368332079`  
		Last Modified: Thu, 05 Nov 2026 19:37:37 GMT  
		Size: 92.1 MB (92084499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d651cf6a75765a5cde30f85175f47798106b12bb4821f673545d3e8878dfeffc`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:98278f12858994c486061125bbab19c6e12c23fd8afa300a3c79e8bb156a867d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23353508b9c2d56f21074c1adb2f1b410dff5ebcecc38d4d0749b565a2856469`

```dockerfile
```

-	Layers:
	-	`sha256:139369df91ba03742ee3febafc7b864992f8186526c7d8f72945232f5897a9eb`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 1.1 MB (1149814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c939b660bd4b89015b027867eae519edad22f406f12fd0d4b3c3f7060a529c`  
		Last Modified: Thu, 05 Nov 2026 19:37:35 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:70d370873a6b9a1aa7b3a56f00676e716f0819cbdca12a39bda58f7ea38220f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89317126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0bef04357db48f9222b9d036753c1ded94fb6bec213ac3c03728ad8e413ccc`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:40:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENV TELEGRAF_VERSION=1.40.3
# Thu, 05 Nov 2026 19:40:38 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Thu, 05 Nov 2026 19:40:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:40:38 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Thu, 05 Nov 2026 19:40:38 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51572f05395be8689936b6c8ccf74a0ebe93e48d8afed7f77f4856e32c23b2d`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fc4eefdb5ea9b21d47551fbb67641b4073f9a4a0aa99daf7775a087a9b3080`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 2.6 MB (2628489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2549a78bfa1058f29e9d9227fee935497e749f9b9a62d995816eeb5d1140b397`  
		Last Modified: Thu, 05 Nov 2026 19:40:54 GMT  
		Size: 82.5 MB (82497503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4822c3a35b7f9bef756a86adb050c006deb2234edf4c8da8f16b8a556038db`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:673aac9760227d944226253e54a52c37bba7b8cff6d5889eb2073e8fae1e09aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e66aa3103638b84c302becf24aecf835fb7676e3e2f9653e6ffc3dfc07d6f6`

```dockerfile
```

-	Layers:
	-	`sha256:afb83f1d436229b556ab657482233d169a32e15a968b872a19260348358266ec`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 1.1 MB (1144803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb39e157d37ecc8c59ccbb144a27b5c7a6c84e695ba1b31107bfb3816c827fc`  
		Last Modified: Thu, 05 Nov 2026 19:40:52 GMT  
		Size: 15.9 KB (15909 bytes)  
		MIME: application/vnd.in-toto+json
