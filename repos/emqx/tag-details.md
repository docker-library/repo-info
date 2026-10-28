<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `emqx`

-	[`emqx:5`](#emqx5)
-	[`emqx:5.7`](#emqx57)
-	[`emqx:5.7.2`](#emqx572)
-	[`emqx:5.8`](#emqx58)
-	[`emqx:5.8.8`](#emqx588)
-	[`emqx:latest`](#emqxlatest)

## `emqx:5`

```console
$ docker pull emqx@sha256:b4b428290e4bfa6fc4d823ab068715c657bb3084085db5ae679ca863593dd440
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:a85765d3a0c6bd7c6c012931d7bc75e0b13159ae1753e57ac539a8b67525d333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108481278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad10af1ca1d3c88bffad7fbb42a20ad53428bcbd8fc3c2c135e920a7b7ccfe07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:33 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:33 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:33 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:33 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:33 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:33 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:33 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:33 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:33 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:33 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2efbb1575aa737f40f7f8c4fd121413e8865ce1bc8dedf04af8d0629925a39`  
		Last Modified: Wed, 28 Oct 2026 01:13:48 GMT  
		Size: 78.6 MB (78624978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982dbdf56e5741031fd1d45f6184f1db42fe980f7e209c4e668ca08bd336512f`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:a433f930f39a32e93b5c92b6fe6e38758ddf725ee0134ecfde49243d14e8eb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ecda48416c77bc5e093ee4c7343a260e4bce91ac4ce1da5877836dda00c640`

```dockerfile
```

-	Layers:
	-	`sha256:828fac5f5ac37e31b3f29384da025825bd2a4aa3e432826077d6205dc9bd7069`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7d63fb23a4e3f4617094eb18fda5a74fa09acc3a07b9936eb73330f56e9e48b`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:db288d4f667c6c8100137d49e29b1c42d0008e4c53699c1ac7740a8f48561902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e5762dbee019b78f94337728678de422b70ad6235b9388758e72d46aeaf27a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:41 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:41 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:41 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:41 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685f4ac75c4bd4f602a6ee3b3048f7ad7bf6831de8683ef0d6a73b57935d0faf`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 76.5 MB (76535791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41b888ae259daa98c705b989e7543d2e238cb7128b662c32d546ec621043083`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:09ccef84250e0568746add271b3a079df00ad57165044bfb09b642f1b1990023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f4b2683a304201706f01ad3b6c909690c861219ff5eb4010b30799f8109085`

```dockerfile
```

-	Layers:
	-	`sha256:eed9da5da1b8edad331d82ee87318dbde01340944ce82fa1645cba253c2a1a4f`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d042491c5f91fb6e582425ab186eb5010d4a391ba387c49464cea67ab7c821`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:4c0c02b8c5ea27f3d32b18eb0598775f909b44343516a9a8b23442c190a860c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:f24b249f06af88ea96eeecf0f2682b307de43b432349ad31449a2e6185adce73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125222797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3326ffd5a16d0395e9669e3f96f279e10f0c322b6f7071dd3a5f8e24ef9af0`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:24 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 28 Oct 2026 01:13:24 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 28 Oct 2026 01:13:24 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 28 Oct 2026 01:13:24 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:24 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:25 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:25 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:25 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:25 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:25 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:25 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:25 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56fddabf2e82609797eee620286190f515be9a408f24fb475e2a9586d0b1a8`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 97.0 MB (96974296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1026fb7f304faf1406e94aee65ed2ac967495d3b9b61e827592cc1a430ef996`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:3767dbe022de83672c72c9f1eb4ec11fefb443ee9a2d83c468bc44695d279176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5de868f0ef43179e60c4f0995a0a9dcd4ce411ee65d139c71327dd96a44bf31`

```dockerfile
```

-	Layers:
	-	`sha256:78a74feb31a869047d607e0e4db11449db62a17b175ad8fabc7f1335b366c4bb`  
		Last Modified: Wed, 28 Oct 2026 01:13:40 GMT  
		Size: 2.8 MB (2755470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df461362ddd7b72bc2628186a29cc84f9254e0d7604728979888df3379a78e9`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:07875c187cb67cec441ba35fbba0361694849be116312e3ed5c3c09957d92c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121682464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da57fad37f52a210d4eae5035062b012fb1f94213c60d6fade590429ad64601`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:42 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 28 Oct 2026 01:13:42 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 28 Oct 2026 01:13:42 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 28 Oct 2026 01:13:42 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:42 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:42 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:42 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:42 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:42 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:42 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:42 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:42 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a9784543a8069955da012d4f849ab03b1e01afd841084ab7810e109f146641`  
		Last Modified: Wed, 28 Oct 2026 01:14:11 GMT  
		Size: 93.5 MB (93543448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0009e0b715bba1499fa7544b838133f772ec8fa56a11f93c406cdd19c274c9f`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:ff362ea5d41d5d7b39cff9d0adf5f6942d5f071dc45e4fbf44992beb11718491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f56ebd195a007fe60d48e2a58f3c41c007423f787ed4ced09678e3bab4c94d3`

```dockerfile
```

-	Layers:
	-	`sha256:486d13908ec49b6ba35db5c77e44d55ca089014979f113ec0b5c079851d366e9`  
		Last Modified: Wed, 28 Oct 2026 01:13:57 GMT  
		Size: 2.8 MB (2755726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e63377d70ee1dc1b43af9023761e4c83beb35484567d0aabadb74fcf103a40a7`  
		Last Modified: Wed, 28 Oct 2026 01:13:57 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:4c0c02b8c5ea27f3d32b18eb0598775f909b44343516a9a8b23442c190a860c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:f24b249f06af88ea96eeecf0f2682b307de43b432349ad31449a2e6185adce73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125222797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3326ffd5a16d0395e9669e3f96f279e10f0c322b6f7071dd3a5f8e24ef9af0`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:24 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 28 Oct 2026 01:13:24 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 28 Oct 2026 01:13:24 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 28 Oct 2026 01:13:24 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:24 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:25 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:25 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:25 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:25 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:25 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:25 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:25 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56fddabf2e82609797eee620286190f515be9a408f24fb475e2a9586d0b1a8`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 97.0 MB (96974296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1026fb7f304faf1406e94aee65ed2ac967495d3b9b61e827592cc1a430ef996`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:3767dbe022de83672c72c9f1eb4ec11fefb443ee9a2d83c468bc44695d279176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5de868f0ef43179e60c4f0995a0a9dcd4ce411ee65d139c71327dd96a44bf31`

```dockerfile
```

-	Layers:
	-	`sha256:78a74feb31a869047d607e0e4db11449db62a17b175ad8fabc7f1335b366c4bb`  
		Last Modified: Wed, 28 Oct 2026 01:13:40 GMT  
		Size: 2.8 MB (2755470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8df461362ddd7b72bc2628186a29cc84f9254e0d7604728979888df3379a78e9`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:07875c187cb67cec441ba35fbba0361694849be116312e3ed5c3c09957d92c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121682464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da57fad37f52a210d4eae5035062b012fb1f94213c60d6fade590429ad64601`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:42 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 28 Oct 2026 01:13:42 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 28 Oct 2026 01:13:42 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 28 Oct 2026 01:13:42 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:42 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:42 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:42 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:42 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:42 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:42 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:42 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:42 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a9784543a8069955da012d4f849ab03b1e01afd841084ab7810e109f146641`  
		Last Modified: Wed, 28 Oct 2026 01:14:11 GMT  
		Size: 93.5 MB (93543448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0009e0b715bba1499fa7544b838133f772ec8fa56a11f93c406cdd19c274c9f`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:ff362ea5d41d5d7b39cff9d0adf5f6942d5f071dc45e4fbf44992beb11718491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f56ebd195a007fe60d48e2a58f3c41c007423f787ed4ced09678e3bab4c94d3`

```dockerfile
```

-	Layers:
	-	`sha256:486d13908ec49b6ba35db5c77e44d55ca089014979f113ec0b5c079851d366e9`  
		Last Modified: Wed, 28 Oct 2026 01:13:57 GMT  
		Size: 2.8 MB (2755726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e63377d70ee1dc1b43af9023761e4c83beb35484567d0aabadb74fcf103a40a7`  
		Last Modified: Wed, 28 Oct 2026 01:13:57 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:b4b428290e4bfa6fc4d823ab068715c657bb3084085db5ae679ca863593dd440
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:a85765d3a0c6bd7c6c012931d7bc75e0b13159ae1753e57ac539a8b67525d333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108481278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad10af1ca1d3c88bffad7fbb42a20ad53428bcbd8fc3c2c135e920a7b7ccfe07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:33 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:33 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:33 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:33 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:33 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:33 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:33 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:33 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:33 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:33 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2efbb1575aa737f40f7f8c4fd121413e8865ce1bc8dedf04af8d0629925a39`  
		Last Modified: Wed, 28 Oct 2026 01:13:48 GMT  
		Size: 78.6 MB (78624978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982dbdf56e5741031fd1d45f6184f1db42fe980f7e209c4e668ca08bd336512f`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:a433f930f39a32e93b5c92b6fe6e38758ddf725ee0134ecfde49243d14e8eb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ecda48416c77bc5e093ee4c7343a260e4bce91ac4ce1da5877836dda00c640`

```dockerfile
```

-	Layers:
	-	`sha256:828fac5f5ac37e31b3f29384da025825bd2a4aa3e432826077d6205dc9bd7069`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7d63fb23a4e3f4617094eb18fda5a74fa09acc3a07b9936eb73330f56e9e48b`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:db288d4f667c6c8100137d49e29b1c42d0008e4c53699c1ac7740a8f48561902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e5762dbee019b78f94337728678de422b70ad6235b9388758e72d46aeaf27a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:41 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:41 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:41 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:41 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685f4ac75c4bd4f602a6ee3b3048f7ad7bf6831de8683ef0d6a73b57935d0faf`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 76.5 MB (76535791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41b888ae259daa98c705b989e7543d2e238cb7128b662c32d546ec621043083`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:09ccef84250e0568746add271b3a079df00ad57165044bfb09b642f1b1990023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f4b2683a304201706f01ad3b6c909690c861219ff5eb4010b30799f8109085`

```dockerfile
```

-	Layers:
	-	`sha256:eed9da5da1b8edad331d82ee87318dbde01340944ce82fa1645cba253c2a1a4f`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d042491c5f91fb6e582425ab186eb5010d4a391ba387c49464cea67ab7c821`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:b4b428290e4bfa6fc4d823ab068715c657bb3084085db5ae679ca863593dd440
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:a85765d3a0c6bd7c6c012931d7bc75e0b13159ae1753e57ac539a8b67525d333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108481278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad10af1ca1d3c88bffad7fbb42a20ad53428bcbd8fc3c2c135e920a7b7ccfe07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:33 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:33 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:33 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:33 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:33 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:33 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:33 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:33 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:33 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:33 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2efbb1575aa737f40f7f8c4fd121413e8865ce1bc8dedf04af8d0629925a39`  
		Last Modified: Wed, 28 Oct 2026 01:13:48 GMT  
		Size: 78.6 MB (78624978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982dbdf56e5741031fd1d45f6184f1db42fe980f7e209c4e668ca08bd336512f`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:a433f930f39a32e93b5c92b6fe6e38758ddf725ee0134ecfde49243d14e8eb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ecda48416c77bc5e093ee4c7343a260e4bce91ac4ce1da5877836dda00c640`

```dockerfile
```

-	Layers:
	-	`sha256:828fac5f5ac37e31b3f29384da025825bd2a4aa3e432826077d6205dc9bd7069`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7d63fb23a4e3f4617094eb18fda5a74fa09acc3a07b9936eb73330f56e9e48b`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:db288d4f667c6c8100137d49e29b1c42d0008e4c53699c1ac7740a8f48561902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e5762dbee019b78f94337728678de422b70ad6235b9388758e72d46aeaf27a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:41 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:41 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:41 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:41 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685f4ac75c4bd4f602a6ee3b3048f7ad7bf6831de8683ef0d6a73b57935d0faf`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 76.5 MB (76535791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41b888ae259daa98c705b989e7543d2e238cb7128b662c32d546ec621043083`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:09ccef84250e0568746add271b3a079df00ad57165044bfb09b642f1b1990023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f4b2683a304201706f01ad3b6c909690c861219ff5eb4010b30799f8109085`

```dockerfile
```

-	Layers:
	-	`sha256:eed9da5da1b8edad331d82ee87318dbde01340944ce82fa1645cba253c2a1a4f`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d042491c5f91fb6e582425ab186eb5010d4a391ba387c49464cea67ab7c821`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:b4b428290e4bfa6fc4d823ab068715c657bb3084085db5ae679ca863593dd440
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:a85765d3a0c6bd7c6c012931d7bc75e0b13159ae1753e57ac539a8b67525d333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108481278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad10af1ca1d3c88bffad7fbb42a20ad53428bcbd8fc3c2c135e920a7b7ccfe07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:33 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:33 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:33 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:33 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:33 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:33 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:33 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:33 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:33 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:33 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:33 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2efbb1575aa737f40f7f8c4fd121413e8865ce1bc8dedf04af8d0629925a39`  
		Last Modified: Wed, 28 Oct 2026 01:13:48 GMT  
		Size: 78.6 MB (78624978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982dbdf56e5741031fd1d45f6184f1db42fe980f7e209c4e668ca08bd336512f`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:a433f930f39a32e93b5c92b6fe6e38758ddf725ee0134ecfde49243d14e8eb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ecda48416c77bc5e093ee4c7343a260e4bce91ac4ce1da5877836dda00c640`

```dockerfile
```

-	Layers:
	-	`sha256:828fac5f5ac37e31b3f29384da025825bd2a4aa3e432826077d6205dc9bd7069`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 2.4 MB (2408418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7d63fb23a4e3f4617094eb18fda5a74fa09acc3a07b9936eb73330f56e9e48b`  
		Last Modified: Wed, 28 Oct 2026 01:13:46 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:db288d4f667c6c8100137d49e29b1c42d0008e4c53699c1ac7740a8f48561902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106750351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e5762dbee019b78f94337728678de422b70ad6235b9388758e72d46aeaf27a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:41 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 28 Oct 2026 01:13:41 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 28 Oct 2026 01:13:41 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 28 Oct 2026 01:13:41 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:41 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
WORKDIR /opt/emqx
# Wed, 28 Oct 2026 01:13:41 GMT
USER emqx
# Wed, 28 Oct 2026 01:13:41 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 28 Oct 2026 01:13:41 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 28 Oct 2026 01:13:41 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 28 Oct 2026 01:13:41 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:13:41 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685f4ac75c4bd4f602a6ee3b3048f7ad7bf6831de8683ef0d6a73b57935d0faf`  
		Last Modified: Wed, 28 Oct 2026 01:13:56 GMT  
		Size: 76.5 MB (76535791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41b888ae259daa98c705b989e7543d2e238cb7128b662c32d546ec621043083`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:09ccef84250e0568746add271b3a079df00ad57165044bfb09b642f1b1990023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f4b2683a304201706f01ad3b6c909690c861219ff5eb4010b30799f8109085`

```dockerfile
```

-	Layers:
	-	`sha256:eed9da5da1b8edad331d82ee87318dbde01340944ce82fa1645cba253c2a1a4f`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 2.4 MB (2408699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d042491c5f91fb6e582425ab186eb5010d4a391ba387c49464cea67ab7c821`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
