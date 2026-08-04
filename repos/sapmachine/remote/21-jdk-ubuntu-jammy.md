## `sapmachine:21-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:902e6eef98afe5daa67ffc73de5c0f59ae2673e9088c57aab7305e61eb05340e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:98644d13290977b40ac0aeb3fceb7af1f260b5aaa9b7efe3f22f5d96a87c6c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249341487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881519bae67e2ae864a7805128182f379e79c7cad2a108a6e1f2f73cc332e4eb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:50:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a93335cbae3ca22fafeda5dfe89bcf7959611ca2ba5d06d311b1374bc089df`  
		Last Modified: Tue, 04 Aug 2026 01:50:52 GMT  
		Size: 219.6 MB (219604970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f225b0c683c2fe593a1dfa25863d361e47db94a497855cb0a8218684830cb07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba29afd16bbb9743626de2d4b7b40763de2603d41569e32d26366174c721baef`

```dockerfile
```

-	Layers:
	-	`sha256:a306ade68d81ef10be27228e45e1b301f539c087409fa78fd56857d4943b60ef`  
		Last Modified: Tue, 04 Aug 2026 01:50:48 GMT  
		Size: 2.6 MB (2632772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75f7dc87baa635a86d9d1f3cbe87b173292d2859b5d08dde77f5d716eeee181`  
		Last Modified: Tue, 04 Aug 2026 01:50:48 GMT  
		Size: 10.1 KB (10095 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:50a16485a29a333b414814f0135067cfc4acfe8715b68755067319070b459088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245388934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb5502df6b05333213d9ea141a89948f6c8f6920d45594c8f73399cf1593ecd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:50:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbd5e9b9dd9cc6cb9fc2dadd8209c5ecdfc9f52ec6751f6bbe9dc731218d751`  
		Last Modified: Tue, 04 Aug 2026 01:50:58 GMT  
		Size: 217.8 MB (217768902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9be3e03414c5d3d17b24be2915b5e6ed27469637000ef6b5be28197f04668947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1eee4cefe1ad968459ca541cf40af910e0d24c8f7198bb1aa993fc0f55d627f`

```dockerfile
```

-	Layers:
	-	`sha256:031890fc9db7740eb3ae4b32f7446cdc447d2a958ec648f6e1b89e269a9f1463`  
		Last Modified: Tue, 04 Aug 2026 01:50:53 GMT  
		Size: 2.6 MB (2632502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a02a301fb8c639d5b86c4814ab7a4babc1a167080586ea64bc3a25c2c1a270`  
		Last Modified: Tue, 04 Aug 2026 01:50:53 GMT  
		Size: 10.2 KB (10247 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:37bf6be9fd53cda87e2063039dd3bd3b14f75700abbd4752664c8123ad89b74f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254173149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407b5fee5b2dbcfacabdf9ed7573f1a5bf22fbbf1790d7873800c2f2ec6c00a3`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:59:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:59:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 02:59:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba83c58e46b82329982257446599f5bacd4ca650560beb56c459bf14538393c1`  
		Last Modified: Tue, 04 Aug 2026 03:00:23 GMT  
		Size: 219.5 MB (219535483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:459b11b2e0e08a56044225b8ee746950e678b2205386f3aaa5c10d26de81aee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2640545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf9fd09d619c5477724ca115e4001c91170f85637cb20798257506f7738f71b`

```dockerfile
```

-	Layers:
	-	`sha256:5b32a54606c6baeab010ebc799fe0d6dbaaf636441fe2b1e775842085d790fa1`  
		Last Modified: Tue, 04 Aug 2026 03:00:18 GMT  
		Size: 2.6 MB (2630382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c91aef0689334208207a01d85b6e693d48ff1f9844cf49f38bd137ad98279688`  
		Last Modified: Tue, 04 Aug 2026 03:00:18 GMT  
		Size: 10.2 KB (10163 bytes)  
		MIME: application/vnd.in-toto+json
