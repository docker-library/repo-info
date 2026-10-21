## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:4a62bd294bf2f4c1e3781194fe7b625b7e527244eeb31afd5758227914a16229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ee80b97dbc73e75928b23bb44f9d37dc3c24c04d103a267391d57bbf0c715ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc0d37fa5bccd21fc4cf4cd070eaeab6a4cb44b5c3b06928fec4e455f5a7fec`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:32:39 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:32:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:32:39 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:32:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdd54f6f4e59c174324eef02571a6fff31e5408c96e950ff1a42c6d235670ea`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e931821e2cc8c823c295ba8d489b41179d43630c8091db45f32effed5b738bc`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 2.6 MB (2578264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61121e35107c11d0b1abbe121f15b57b5ed18de214095f46dfd4658b6a7a3255`  
		Last Modified: Wed, 21 Oct 2026 21:32:58 GMT  
		Size: 91.4 MB (91394651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed113135fee29685855d1d12b379a3ff0865e9e4e2af4eb37a0308b94d6e3682`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 634.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:24370ef8ec3af16c68e7dbdb589c3c68c4cfd5204e7e41dcb3de582848765ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1165524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374408f3e19a4f55646a2c989fe7ba6261884fe7a75c06d9580fba85911025eb`

```dockerfile
```

-	Layers:
	-	`sha256:234de45d5bd34b8d5f400a2ce4dd0d707c98f73e92e256951f00fc6883243470`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 1.1 MB (1149736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab44257c63fde9552a3d1b6eb26ee1f634311eaec002b2ea452a902bd798bf`  
		Last Modified: Wed, 21 Oct 2026 21:32:55 GMT  
		Size: 15.8 KB (15788 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:alpine` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:794fa91887f5927901ec362681fdbd16f2d4fb64b96e6fbb14804edacd1c57e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88729512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886a355101435218d399e322d16467b264d85f1b8bedb6ac6c52638e06681563`
-	Entrypoint: `["\/sbin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:34:35 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors tzdata setpriv libcap tini &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 21:34:42 GMT
RUN ARCH= &&     case "$(apk --print-arch)" in         x86_64) ARCH='amd64';;         aarch64) ARCH='arm64';;         *) echo "Unsupported architecture: $(apk --print-arch)"; exit 1;;     esac &&     set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz.asc telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}_linux_${ARCH}.tar.gz &&     mv /usr/src/telegraf*/etc/telegraf/telegraf.conf /etc/telegraf/ &&     mkdir /etc/telegraf/telegraf.d &&     cp -a /usr/src/telegraf*/usr/bin/telegraf /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S telegraf &&     adduser -S telegraf -G telegraf &&     chown -R telegraf:telegraf /etc/telegraf &&     for g in $(id -Gn root); do [ "$g" = 'root' ] || delgroup root "$g"; done # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 21:34:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:34:42 GMT
ENTRYPOINT ["/sbin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 21:34:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b3ba44e1545643b0259d257983328bc9ec4bea27ccd4789ea8da8c5a2d6d2`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d14b83e01daa841bd6a6a638b9f776432f0f34b855c0ecbca9f320ff10452bf`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 2.6 MB (2628536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09036a9a31093b38070c389fc413ab77ed61441d82ba90e997281bfc6fbcc14`  
		Last Modified: Wed, 21 Oct 2026 21:34:59 GMT  
		Size: 81.9 MB (81910568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b4db8b97f0744721fc8b5fef69b671779fd3a42a1032855a35c7ab6064f6d`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 635.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:alpine` - unknown; unknown

```console
$ docker pull telegraf@sha256:a5c45baf758c848dc2b67cc63a910e60bc111deb52d22fa8435f134e929efbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1160635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c53580f871d71641d71f8835553c19809c672e908a7425b16a9bcddfa8a6ea6`

```dockerfile
```

-	Layers:
	-	`sha256:c838e8f58a91f2204f082e8411cfaa2dca41a9b976a3267f6141ed8041f5f045`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 1.1 MB (1144725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d0f0d7a708eff68fc77e009cc1622b08722750937d0069d56a552f26ff246`  
		Last Modified: Wed, 21 Oct 2026 21:34:56 GMT  
		Size: 15.9 KB (15910 bytes)  
		MIME: application/vnd.in-toto+json
