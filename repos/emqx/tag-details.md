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
$ docker pull emqx@sha256:78b571d7d0c98971e19760af23d24f187f85b20a8fa1f09eadcd4e88454c7d26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5` - linux; amd64

```console
$ docker pull emqx@sha256:52ec49bfbcf6bf053ccac4675b7e20af60bfe6c461043ba0ccfba73a6bc4ec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de94890000845bd117a9d5fa3f8dd8469150b0a4ae544e2fe6910fb5550d9359`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:03 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:03 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:03 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:03 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:03 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:03 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:03 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:03 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:03 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc225194e466d06d51fef8bb5e761b5466acbc0ce6425b2c8ed37c8d625ef0b`  
		Last Modified: Wed, 05 Aug 2026 00:15:18 GMT  
		Size: 78.6 MB (78626355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6371c3c41f87638a6a70665dbe47ce850637864f81f0a8c277303c5bdfe0c28`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:c22ed27693802b66e34dcc1821aa1a7fa1cb80a5adae7163fafdf4465e9b9be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b43f55951bf77d62eafc9b6958049beb100e42e15d230d4b278dede0b82330`

```dockerfile
```

-	Layers:
	-	`sha256:8b07626596833856e973532962e8f35d8ef8bdf9dc92981d45ebae186b51a554`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcbbe417ab9b8225e11443d453f3b0484b6f0f5b0835eed6e7ec9511fbcd7ba`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6f91295386d9bfddb0bcc036e7b5bce538daf7aaa888a57b5529941fc19c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400b2026febf5d245eb9e4733fea9d87dd530090f62248131394f0b94f4b7b7a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:26 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:26 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:26 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:26 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:26 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:26 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:26 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:26 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:26 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d58e6bf3293c4d83cfcb2037c810f15e5af571b3959b4c305f7b8245ca3627`  
		Last Modified: Wed, 05 Aug 2026 00:15:42 GMT  
		Size: 76.5 MB (76533008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc54640c853e6707210f62a732a83bea3054e387a4cce9fe97aeac6be6b1463f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5` - unknown; unknown

```console
$ docker pull emqx@sha256:636d0b4340b899b4bf831f4e629590d4fe887a2b67e9dd4e7afed365bcc8b8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc11d29e45ffb889f8afd79842835e211ff99a3066cb0cfc1dc3aee1a0a222fc`

```dockerfile
```

-	Layers:
	-	`sha256:3e2b3bab33b7523a5a9fae67c7b6fd94799f1609663673177bf777355e109dc8`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f301adb12811cf2701aa89cc4b74bc1f7f28ddff64d647ecc6232c4d33f1794f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7`

```console
$ docker pull emqx@sha256:7768392216d9d2c535a37e315e9456f544d108aa4aa18c7445aca2a785b9f291
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7` - linux; amd64

```console
$ docker pull emqx@sha256:f1c0406a1db8fe6dc4bd0d2710c7fff28613cead6eed89350ebd504900f9b7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125391804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f591562f3af7026319d251bf4d0ff0aa8fc0ce95151c7b8425bd0c78d8ea54e`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:29 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 05 Aug 2026 00:15:29 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 05 Aug 2026 00:15:29 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 05 Aug 2026 00:15:29 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:29 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:29 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:29 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:29 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:29 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:29 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:29 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:29 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053916bd08f3aa32d467788bf8b6fcdf4e2314949bb726d7344007af242db47e`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 97.2 MB (97158152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a3f5f83bb871e9aac2b8192f1fc1e46d6c5f72c24f7b2878b6c524a1519f82`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:d658c324ab6c4aec602697ea678b8a55bdc797874e05f7909464d5f95bcbe809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1422e3c2c6fc8d565403add24cb1295fcccca5a4a7e9808a428c620ee3a81`

```dockerfile
```

-	Layers:
	-	`sha256:60fbf45bbbbbe772f3f1a208722b1cbac795dabfc2897bb1662df207a0fa3cf6`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 2.8 MB (2751470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa08cf8d13b83edf0fc81a562a80cd30235d823ef17505ba1f7244e66c8e471`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:ddb0ea163f62a39334936cefd8b05586d3fcf2775da5a9b7e77e1a8514163474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121838981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba83e2bbf9dcf22f6d5522d3410ba06b2130a54c8c0d3644fb06121f4b8a07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:53 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 05 Aug 2026 00:14:53 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 05 Aug 2026 00:14:53 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 05 Aug 2026 00:14:53 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:14:53 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:14:53 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:14:53 GMT
USER emqx
# Wed, 05 Aug 2026 00:14:53 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:14:53 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:14:53 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:14:53 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:14:53 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc12c18d1874bc7993df9e23180e9d45adf2bb24de504dc5e9edae67be66cb8`  
		Last Modified: Wed, 05 Aug 2026 00:15:10 GMT  
		Size: 93.7 MB (93720717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3b7c2187a48d25ed77c006734d0d8c6172336a84d5e02631e6ce6034524dc6`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7` - unknown; unknown

```console
$ docker pull emqx@sha256:ea9fd2906ff2ff70acd4befef267eab22079dbb2695d04813a9ff688d946d8da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01abbf46ce53537160673223919d3aa42810e9342897b470faac3b158ad6afd4`

```dockerfile
```

-	Layers:
	-	`sha256:d610371540b92d90243603f0ddd0c636b26c2c5ea874a50a6e6344250b7dfb03`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 2.8 MB (2751726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2403bc6af6bf8494834a181fc4d6c5f6d84e69729d1d1effb9925acdd4f8cbe`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.7.2`

```console
$ docker pull emqx@sha256:7768392216d9d2c535a37e315e9456f544d108aa4aa18c7445aca2a785b9f291
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.7.2` - linux; amd64

```console
$ docker pull emqx@sha256:f1c0406a1db8fe6dc4bd0d2710c7fff28613cead6eed89350ebd504900f9b7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125391804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f591562f3af7026319d251bf4d0ff0aa8fc0ce95151c7b8425bd0c78d8ea54e`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:29 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 05 Aug 2026 00:15:29 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 05 Aug 2026 00:15:29 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 05 Aug 2026 00:15:29 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:29 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:29 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:29 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:29 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:29 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:29 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:29 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:29 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053916bd08f3aa32d467788bf8b6fcdf4e2314949bb726d7344007af242db47e`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 97.2 MB (97158152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a3f5f83bb871e9aac2b8192f1fc1e46d6c5f72c24f7b2878b6c524a1519f82`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:d658c324ab6c4aec602697ea678b8a55bdc797874e05f7909464d5f95bcbe809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1422e3c2c6fc8d565403add24cb1295fcccca5a4a7e9808a428c620ee3a81`

```dockerfile
```

-	Layers:
	-	`sha256:60fbf45bbbbbe772f3f1a208722b1cbac795dabfc2897bb1662df207a0fa3cf6`  
		Last Modified: Wed, 05 Aug 2026 00:15:45 GMT  
		Size: 2.8 MB (2751470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa08cf8d13b83edf0fc81a562a80cd30235d823ef17505ba1f7244e66c8e471`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.7.2` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:ddb0ea163f62a39334936cefd8b05586d3fcf2775da5a9b7e77e1a8514163474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121838981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba83e2bbf9dcf22f6d5522d3410ba06b2130a54c8c0d3644fb06121f4b8a07`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:53 GMT
ENV EMQX_VERSION=5.7.2
# Wed, 05 Aug 2026 00:14:53 GMT
ENV AMD64_SHA256=1f32fb90ca5e7b3d2a447a82d4e3d22397e25bc97800bdcb1deb6d2a685c1c35
# Wed, 05 Aug 2026 00:14:53 GMT
ENV ARM64_SHA256=6bfa8c774a9f7b2957a6519e428c96d58ac4f748ddd0b40dd2b429d270fcf9c0
# Wed, 05 Aug 2026 00:14:53 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:14:53 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:14:53 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:14:53 GMT
USER emqx
# Wed, 05 Aug 2026 00:14:53 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:14:53 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:14:53 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:14:53 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:14:53 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc12c18d1874bc7993df9e23180e9d45adf2bb24de504dc5e9edae67be66cb8`  
		Last Modified: Wed, 05 Aug 2026 00:15:10 GMT  
		Size: 93.7 MB (93720717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3b7c2187a48d25ed77c006734d0d8c6172336a84d5e02631e6ce6034524dc6`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.7.2` - unknown; unknown

```console
$ docker pull emqx@sha256:ea9fd2906ff2ff70acd4befef267eab22079dbb2695d04813a9ff688d946d8da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2763714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01abbf46ce53537160673223919d3aa42810e9342897b470faac3b158ad6afd4`

```dockerfile
```

-	Layers:
	-	`sha256:d610371540b92d90243603f0ddd0c636b26c2c5ea874a50a6e6344250b7dfb03`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 2.8 MB (2751726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2403bc6af6bf8494834a181fc4d6c5f6d84e69729d1d1effb9925acdd4f8cbe`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 12.0 KB (11988 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8`

```console
$ docker pull emqx@sha256:78b571d7d0c98971e19760af23d24f187f85b20a8fa1f09eadcd4e88454c7d26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8` - linux; amd64

```console
$ docker pull emqx@sha256:52ec49bfbcf6bf053ccac4675b7e20af60bfe6c461043ba0ccfba73a6bc4ec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de94890000845bd117a9d5fa3f8dd8469150b0a4ae544e2fe6910fb5550d9359`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:03 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:03 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:03 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:03 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:03 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:03 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:03 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:03 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:03 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc225194e466d06d51fef8bb5e761b5466acbc0ce6425b2c8ed37c8d625ef0b`  
		Last Modified: Wed, 05 Aug 2026 00:15:18 GMT  
		Size: 78.6 MB (78626355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6371c3c41f87638a6a70665dbe47ce850637864f81f0a8c277303c5bdfe0c28`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:c22ed27693802b66e34dcc1821aa1a7fa1cb80a5adae7163fafdf4465e9b9be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b43f55951bf77d62eafc9b6958049beb100e42e15d230d4b278dede0b82330`

```dockerfile
```

-	Layers:
	-	`sha256:8b07626596833856e973532962e8f35d8ef8bdf9dc92981d45ebae186b51a554`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcbbe417ab9b8225e11443d453f3b0484b6f0f5b0835eed6e7ec9511fbcd7ba`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6f91295386d9bfddb0bcc036e7b5bce538daf7aaa888a57b5529941fc19c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400b2026febf5d245eb9e4733fea9d87dd530090f62248131394f0b94f4b7b7a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:26 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:26 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:26 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:26 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:26 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:26 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:26 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:26 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:26 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d58e6bf3293c4d83cfcb2037c810f15e5af571b3959b4c305f7b8245ca3627`  
		Last Modified: Wed, 05 Aug 2026 00:15:42 GMT  
		Size: 76.5 MB (76533008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc54640c853e6707210f62a732a83bea3054e387a4cce9fe97aeac6be6b1463f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8` - unknown; unknown

```console
$ docker pull emqx@sha256:636d0b4340b899b4bf831f4e629590d4fe887a2b67e9dd4e7afed365bcc8b8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc11d29e45ffb889f8afd79842835e211ff99a3066cb0cfc1dc3aee1a0a222fc`

```dockerfile
```

-	Layers:
	-	`sha256:3e2b3bab33b7523a5a9fae67c7b6fd94799f1609663673177bf777355e109dc8`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f301adb12811cf2701aa89cc4b74bc1f7f28ddff64d647ecc6232c4d33f1794f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:5.8.8`

```console
$ docker pull emqx@sha256:78b571d7d0c98971e19760af23d24f187f85b20a8fa1f09eadcd4e88454c7d26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:5.8.8` - linux; amd64

```console
$ docker pull emqx@sha256:52ec49bfbcf6bf053ccac4675b7e20af60bfe6c461043ba0ccfba73a6bc4ec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de94890000845bd117a9d5fa3f8dd8469150b0a4ae544e2fe6910fb5550d9359`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:03 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:03 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:03 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:03 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:03 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:03 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:03 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:03 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:03 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc225194e466d06d51fef8bb5e761b5466acbc0ce6425b2c8ed37c8d625ef0b`  
		Last Modified: Wed, 05 Aug 2026 00:15:18 GMT  
		Size: 78.6 MB (78626355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6371c3c41f87638a6a70665dbe47ce850637864f81f0a8c277303c5bdfe0c28`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:c22ed27693802b66e34dcc1821aa1a7fa1cb80a5adae7163fafdf4465e9b9be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b43f55951bf77d62eafc9b6958049beb100e42e15d230d4b278dede0b82330`

```dockerfile
```

-	Layers:
	-	`sha256:8b07626596833856e973532962e8f35d8ef8bdf9dc92981d45ebae186b51a554`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcbbe417ab9b8225e11443d453f3b0484b6f0f5b0835eed6e7ec9511fbcd7ba`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:5.8.8` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6f91295386d9bfddb0bcc036e7b5bce538daf7aaa888a57b5529941fc19c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400b2026febf5d245eb9e4733fea9d87dd530090f62248131394f0b94f4b7b7a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:26 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:26 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:26 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:26 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:26 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:26 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:26 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:26 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:26 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d58e6bf3293c4d83cfcb2037c810f15e5af571b3959b4c305f7b8245ca3627`  
		Last Modified: Wed, 05 Aug 2026 00:15:42 GMT  
		Size: 76.5 MB (76533008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc54640c853e6707210f62a732a83bea3054e387a4cce9fe97aeac6be6b1463f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:5.8.8` - unknown; unknown

```console
$ docker pull emqx@sha256:636d0b4340b899b4bf831f4e629590d4fe887a2b67e9dd4e7afed365bcc8b8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc11d29e45ffb889f8afd79842835e211ff99a3066cb0cfc1dc3aee1a0a222fc`

```dockerfile
```

-	Layers:
	-	`sha256:3e2b3bab33b7523a5a9fae67c7b6fd94799f1609663673177bf777355e109dc8`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f301adb12811cf2701aa89cc4b74bc1f7f28ddff64d647ecc6232c4d33f1794f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json

## `emqx:latest`

```console
$ docker pull emqx@sha256:78b571d7d0c98971e19760af23d24f187f85b20a8fa1f09eadcd4e88454c7d26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:52ec49bfbcf6bf053ccac4675b7e20af60bfe6c461043ba0ccfba73a6bc4ec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108408184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de94890000845bd117a9d5fa3f8dd8469150b0a4ae544e2fe6910fb5550d9359`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:03 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:03 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:03 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:03 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:03 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:03 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:03 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:03 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:03 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:03 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:03 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc225194e466d06d51fef8bb5e761b5466acbc0ce6425b2c8ed37c8d625ef0b`  
		Last Modified: Wed, 05 Aug 2026 00:15:18 GMT  
		Size: 78.6 MB (78626355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6371c3c41f87638a6a70665dbe47ce850637864f81f0a8c277303c5bdfe0c28`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:c22ed27693802b66e34dcc1821aa1a7fa1cb80a5adae7163fafdf4465e9b9be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b43f55951bf77d62eafc9b6958049beb100e42e15d230d4b278dede0b82330`

```dockerfile
```

-	Layers:
	-	`sha256:8b07626596833856e973532962e8f35d8ef8bdf9dc92981d45ebae186b51a554`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 2.4 MB (2403759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcbbe417ab9b8225e11443d453f3b0484b6f0f5b0835eed6e7ec9511fbcd7ba`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:6f91295386d9bfddb0bcc036e7b5bce538daf7aaa888a57b5529941fc19c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106677680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400b2026febf5d245eb9e4733fea9d87dd530090f62248131394f0b94f4b7b7a`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:26 GMT
ENV EMQX_VERSION=5.8.8
# Wed, 05 Aug 2026 00:15:26 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Wed, 05 Aug 2026 00:15:26 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Wed, 05 Aug 2026 00:15:26 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Wed, 05 Aug 2026 00:15:26 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 00:15:26 GMT
WORKDIR /opt/emqx
# Wed, 05 Aug 2026 00:15:26 GMT
USER emqx
# Wed, 05 Aug 2026 00:15:26 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Wed, 05 Aug 2026 00:15:26 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Wed, 05 Aug 2026 00:15:27 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Wed, 05 Aug 2026 00:15:27 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:15:27 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d58e6bf3293c4d83cfcb2037c810f15e5af571b3959b4c305f7b8245ca3627`  
		Last Modified: Wed, 05 Aug 2026 00:15:42 GMT  
		Size: 76.5 MB (76533008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc54640c853e6707210f62a732a83bea3054e387a4cce9fe97aeac6be6b1463f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:636d0b4340b899b4bf831f4e629590d4fe887a2b67e9dd4e7afed365bcc8b8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc11d29e45ffb889f8afd79842835e211ff99a3066cb0cfc1dc3aee1a0a222fc`

```dockerfile
```

-	Layers:
	-	`sha256:3e2b3bab33b7523a5a9fae67c7b6fd94799f1609663673177bf777355e109dc8`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 2.4 MB (2404040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f301adb12811cf2701aa89cc4b74bc1f7f28ddff64d647ecc6232c4d33f1794f`  
		Last Modified: Wed, 05 Aug 2026 00:15:40 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
