## `sapmachine:jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:99cb93d3f6054fdb55cc44d25db56db9fd471d311145066bdaafe4ada9791e1b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:689b9a76ec2413a1e9c1e6efea7524e09984ad223f1b6a5cf17590c5ae1cc6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92456454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9878a03a45257ad75b203d05a35a72c3e26d6ebfbbd40c799285fea61c3da7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:47:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:47:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba44c939e5649aec7e5dc349292f7ca29b99d7352760072ed8bb74cc6a8932`  
		Last Modified: Tue, 04 Aug 2026 01:48:05 GMT  
		Size: 62.7 MB (62705345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9506bfedb10ecf662a1cd44db56a178739248045befcb7ca0e323c80854a2e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eadb8536de11954f56194cc9ce3044e4ab7760ea37cdaa914490bc882dc3520`

```dockerfile
```

-	Layers:
	-	`sha256:abf1e0d89061a57925b90583278588a3e673d9341d75f9999904051836f84182`  
		Last Modified: Tue, 04 Aug 2026 01:48:03 GMT  
		Size: 2.3 MB (2279244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2465525d73e86de6ee9acdb5c7e48b09e47d3512ea41dc4d22c4ca74950e2e2`  
		Last Modified: Tue, 04 Aug 2026 01:48:03 GMT  
		Size: 11.6 KB (11558 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:eed6693399b852b8baa149d396fcbe9b70308eb350da0cd034af2c04d37de5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88200365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bc1614bed9c32f3c77bb1295893b0fdd800e22f25b5de4057de40e8387a77`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:47:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:47:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1ace67c3bed3bfa6836069f54dbe84e5ec55b369e14c5dff378176ce08a7c6`  
		Last Modified: Tue, 04 Aug 2026 01:47:56 GMT  
		Size: 59.3 MB (59313547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3e8cbe024952a6aa44c347397886e5639d1a4bc073619e67d37fb8613f583408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae05103a8868fd7472b11516ebf7ae7f6ba42d9992c21e87aa88d351d771fb2`

```dockerfile
```

-	Layers:
	-	`sha256:c2312c0b77fdf1883d2a74d6e2e946a08de4d6760922ec94ef7d5c72a7693cab`  
		Last Modified: Tue, 04 Aug 2026 01:47:54 GMT  
		Size: 2.3 MB (2279796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4fd9035326199ca738cdc6dade89c437854555cf66f430c1dc4a88e70da948`  
		Last Modified: Tue, 04 Aug 2026 01:47:54 GMT  
		Size: 11.8 KB (11758 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a24a5eb2ec35984a8cf41b08e724849d8524af0bf6a1c0fbcca0b65564fc43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94003903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c5e44a3a6c3d8ebe226214609f8cd19a380a48e226c6789225e4cdef0aabcb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:20:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:20:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:20:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac830cf73f128435497afb89c2e0827260c5ed035bd8208d48f5e21a7771f6ec`  
		Last Modified: Wed, 22 Jul 2026 18:20:56 GMT  
		Size: 59.7 MB (59690427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4f5f44bd577617484cafc2a1a6fb2227404ad776ea8fa7fa766ebf19bee1e4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70ff7397e9a7c4420f71bdc182a50a7386580b223b8584e84c8897b519e9025`

```dockerfile
```

-	Layers:
	-	`sha256:97610061052ad44d48b290244ba4b5b2ce508d3b867bd9f1a2e46360f66994d3`  
		Last Modified: Wed, 22 Jul 2026 18:20:54 GMT  
		Size: 2.3 MB (2278029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27f0385371d279f4269bc0bf83bda15a0b12c8145ec2e1b2c383331461b031b9`  
		Last Modified: Wed, 22 Jul 2026 18:20:54 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
