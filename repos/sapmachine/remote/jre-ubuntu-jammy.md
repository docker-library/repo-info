## `sapmachine:jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:ef7a3a3470188b4886b18f5b44e30c6e250475fdae0179e1d6955aac7554549c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:710c368e94d55a00e2ec699f894cde7773bc0802b0e5fd176108a6b075f22935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91159225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e028431dc3d6a5df16af3c6e1116b9269e29773b84b32ccf46b359852d345b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6857b471316da389016865bc55d878561e0eaea65e503557656bbb9c3b53b93`  
		Last Modified: Tue, 18 Aug 2026 01:20:24 GMT  
		Size: 61.4 MB (61422282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c7d9e67fe6001b43bc7f0b23ffc59db8f5d428c6f75fd3c34f74c120cbd7d6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55563a62d450582dea4c14a4acc0575eac9da0897f49a747b722c48162c72780`

```dockerfile
```

-	Layers:
	-	`sha256:5e89e7df1a30c3ffba69a09741af1995a4b52d01ec1a4d62ec91db165d742790`  
		Last Modified: Tue, 18 Aug 2026 01:20:23 GMT  
		Size: 2.6 MB (2551817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:369d7609348bad738c8b46e9564450125c5ab50c0a7561295583eff9beb31985`  
		Last Modified: Tue, 18 Aug 2026 01:20:23 GMT  
		Size: 9.4 KB (9421 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8fca8c9b41092d159c52c4f215f0d098911fcd49ff3fc0c3ec8135fc5e553f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88011606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6aceab4ba767f47399f98e6b39c4f419c1eca817e6080dbe4aa37056aafa4e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:19:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7086061b9603cf5b3a7e3498b45f0cc6aff7fa391eac8665b7b2a85f9d11c83d`  
		Last Modified: Tue, 18 Aug 2026 01:20:07 GMT  
		Size: 60.4 MB (60391153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fcd37045980458c071ffce90f397674a83ae3217fc0c047d75f87a765ec45927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb1bef7acfbb2e245f7583d199cbfc8ee24bb1124d0366fa63b801c0e2978ef`

```dockerfile
```

-	Layers:
	-	`sha256:65d50683e5769a079f70266524908b7daf8eb24d9b2ead252122309f1af1e9ae`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 2.6 MB (2551520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:463c577e9aa6ef8d0b718971ac685ae99e8004ce798dd3acfeb4c954a43f9dc5`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 9.5 KB (9549 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5f9a2a42f4f49ca758512018f360d0a8a50aa9df01e10211c8ac639baec4544b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95588302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40693d81c04597860bc4e549a9f0f82ad9f3823220c2dbd1e34f0c206c33a9d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:30:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:30:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:30:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c380a543e5e08265f66eaacb0039db39111dbd8bed44e0a18b6677f073b662b`  
		Last Modified: Tue, 18 Aug 2026 01:31:22 GMT  
		Size: 61.0 MB (60950157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:85ab86b6abef7e2f61e34421f687a4bb9d8f3f14d726af255e451220b826911b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565ae91f6443eb4593a4f80b249ed593879ff8486682f691f79d73c1322da633`

```dockerfile
```

-	Layers:
	-	`sha256:20046dd36e68d7cf48d0711c9296e7e91e4a099ccdd647d509ae5a70d4c57ed4`  
		Last Modified: Tue, 18 Aug 2026 01:31:21 GMT  
		Size: 2.6 MB (2550731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23f7e3bb9d0e4dcc7e00b1c0a4f4275314c274ea6afc19b7e9b0e1316d9749ed`  
		Last Modified: Tue, 18 Aug 2026 01:31:20 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
