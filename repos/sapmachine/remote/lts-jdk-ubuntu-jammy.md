## `sapmachine:lts-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:26272d735381d7023b307ba42b4a7a15e61a2cf6320c1b1f1580d8dfddb9e47c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:f4abd4d2dcf55fabb3dd458b671581e8005d67f3f2954c01eba1aafbfc57cee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254429204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4897f93407f6ffa94ab85bdbeb68873cab9856ee6672265824a71971ee19ec73`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:06:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:06:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8435c6cc0f32928989163e48cf3add17069745dad3d92f5ccd95124ba1b0f76c`  
		Last Modified: Thu, 20 Aug 2026 18:06:37 GMT  
		Size: 224.7 MB (224692261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9824dccad2429f709e254b75e1eb66365c55c467ea3d951f510e7b6ca436b4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303a8e61cf9ec6bb2333b578b811f1d742e0555276f6666f899412cbdac8acfd`

```dockerfile
```

-	Layers:
	-	`sha256:fca88c685b15d9dd4b5ae4e845c7438d523e867fecd3196284116f87226522a4`  
		Last Modified: Thu, 20 Aug 2026 18:06:31 GMT  
		Size: 2.6 MB (2623558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84db2a496b6c029c85d2811deafc16a1bf2886e89ad29087e41a3f379e1f0e58`  
		Last Modified: Thu, 20 Aug 2026 18:06:31 GMT  
		Size: 12.2 KB (12158 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8c3344e06bba0b2b8769833c01f3fdc29597a763ad54ed06c398653aa95981d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (250034547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f7be8a1d8db263f4095ca25897ce99cbab4c20ad70e5ff782142a6b5973aa7`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:03:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:03:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612952e56ba4e671f06a0c1fddc4a8626945201a5ceceeadaa99c55b8b6a57c7`  
		Last Modified: Thu, 20 Aug 2026 18:03:47 GMT  
		Size: 222.4 MB (222414094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2775111541342c80bc8fc447d0374e6c14b02bb1b5e3d9dd1cfa650ed75a5a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6c7b2e31fc0f6e3f2ff2dfffc3a95b9b984d1d3451deadc50caa5eee275714`

```dockerfile
```

-	Layers:
	-	`sha256:ca328c9589c353d8048c300ebe867ea61f679531823bb1b53a8781ebb78813ec`  
		Last Modified: Thu, 20 Aug 2026 18:03:43 GMT  
		Size: 2.6 MB (2623333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af17aa13cff908031e3b297418ab7e89b258d579be964ae0c8dffbccc38a9d2`  
		Last Modified: Thu, 20 Aug 2026 18:03:43 GMT  
		Size: 12.4 KB (12358 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7769a854738a74941267d1c7600bf50884dc642d72ae18ca8086881fb6c730a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257473031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b93b471c9816cf8ee3727e22bf3f2aa19a7ce7e4bc2ad7157e64d3bb438a31`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:08:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:08:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6990e60d15c0f694004d44a142d1a21cfc807a2fc265239f0df4afe0b97988e7`  
		Last Modified: Thu, 20 Aug 2026 18:09:30 GMT  
		Size: 222.8 MB (222834886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c58e15077a9b84b530ea7bdd1334fcd31e196bd5d88011a13d2099854f0240f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c48c9c3dcaae4bf63647aef10f70e90b4e5d43ac4f88dba0900da8457109459`

```dockerfile
```

-	Layers:
	-	`sha256:aa06a46e3f6f1a9bbe569743889d7fe87abfab1231821bc7ef6023750a43c16d`  
		Last Modified: Thu, 20 Aug 2026 18:09:24 GMT  
		Size: 2.6 MB (2620574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15e9deec74795bb0fce8dff3f1bf0c52e1662d0bfe9fd8957bffaa12224d688`  
		Last Modified: Thu, 20 Aug 2026 18:09:24 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.in-toto+json
