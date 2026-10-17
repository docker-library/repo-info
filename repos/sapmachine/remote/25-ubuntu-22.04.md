## `sapmachine:25-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:fbc6ec4cad1d9f0a007fbf30f5a85d7daa8e8415e5d80a3ec57eda8f95345786
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8f744de0a4941cb6fc5f546c2f347b544dd21762808f2b9ca7174cc10bc3e016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254451863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2d4434c0f66ac5342f7f7e16bb4b3a64d937e8d9871dbb72d707db228da376`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b46486ebd9e82b7ec170f8dada8f2c619c202ab63c0d0362ec81e292eba5ee`  
		Last Modified: Fri, 02 Oct 2026 01:39:04 GMT  
		Size: 224.7 MB (224700236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8bada6b726ef92561d6251dbc6b65c3ac7f0020468837bef161ea8f6c0b534c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb16c1b7548f2b721fd1fe7f1efd49b4b8c904ffbdeac4106e598be9313d66`

```dockerfile
```

-	Layers:
	-	`sha256:6f2068a9d61188f503c323df57d19a77b9456a0e14013f02f591661f24500ee3`  
		Last Modified: Fri, 02 Oct 2026 01:39:00 GMT  
		Size: 2.6 MB (2623626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75af3d947fed7acd59d0e7f68211d543b589864b5f3019257c92121c51ea1637`  
		Last Modified: Fri, 02 Oct 2026 01:39:00 GMT  
		Size: 12.2 KB (12158 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:441c93a989c011fccde97601da6c4156985092c902eea9e56d2477b875250142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250116172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1094dd740ea9d8e5be9fd559043e390eec9d50d85baadd19fc59ecbc0461e5e7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d242447bda22eeab5bc34981d87aedefda21ca86fee80b0f0c80a50c55d5556`  
		Last Modified: Sat, 17 Oct 2026 00:39:45 GMT  
		Size: 222.4 MB (222431449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cf98795585e43528e03d4023ebbead64785a623802027aec5d7dcbab98505b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d041e8c0f7deec0b027086410e7e938fff643a99f739223049a454f88fe451`

```dockerfile
```

-	Layers:
	-	`sha256:855681ac991cfff759cbdde0de6ab619b977be51d61099ebc0792f05101f4e9d`  
		Last Modified: Sat, 17 Oct 2026 00:39:40 GMT  
		Size: 2.6 MB (2623401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c927513c072f9bc71a8055dbdc72771251d596fd23c912840a6663d7c890c5`  
		Last Modified: Sat, 17 Oct 2026 00:39:40 GMT  
		Size: 12.4 KB (12358 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:25f8435858fbb588a74018bde38b064da2d1e2a7ff26f1bb1e84bafb2802fb7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257544648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c3054fea48d206e1a33de9b0a5476c1d9e428c12f87fcd11f8599542c756e2`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:41:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:41:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:41:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e799b371fa84c8e5e1e8543b75db64c7c94382930c51906df1ee6c28ec4af5c8`  
		Last Modified: Fri, 02 Oct 2026 05:42:59 GMT  
		Size: 222.8 MB (222841440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:308f465157d9b91cd2a976137edc87d0567e91aafce354fbf250de1f60d6bad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b66d8fae4a3c23fa8ac95a719acb75b5aaf17e3f48243417f48fafc927186`

```dockerfile
```

-	Layers:
	-	`sha256:e437d384b94c1d6ee103dc049be85a0a74e6effccceca2191db76644b3ff8648`  
		Last Modified: Fri, 02 Oct 2026 05:42:03 GMT  
		Size: 2.6 MB (2620642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded53819daf3e9d4154364e5cbe0c426cddf5de34a5a00685fad77e9f1757fed`  
		Last Modified: Fri, 02 Oct 2026 05:42:03 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.in-toto+json
