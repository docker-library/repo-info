## `sapmachine:25-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:437e3279687b4db5d27793c5851808bfe1bc5970370601a47a5b7b0b6bbf7567
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:7e8501c63e506f0633bb6dbd4aab60a9970bcb17a18fe86522b88cc9e97f6d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90217364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815ac1f975e0de54293c5254f913e7dd01c3dc81db8b84efe5a428caeff9a356`
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
# Tue, 18 Aug 2026 01:20:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c16b0c4281267e0baa3fed09e73aca7ca5b9c1581e6c4d42b838de032a6addb`  
		Last Modified: Tue, 18 Aug 2026 01:20:34 GMT  
		Size: 60.5 MB (60480421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:60641055b5b71e208875ef32c28059abef30dc468b4e63ccca719e8530c68e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144b9b5e327d2b79c5e8d37fbe52cb5005658a87b310d8a5a59b30e325acb310`

```dockerfile
```

-	Layers:
	-	`sha256:f3626e8f6a94ffb75adf5152a852e29c2394abc1465f22e3cea4c9fc071d0722`  
		Last Modified: Tue, 18 Aug 2026 01:20:33 GMT  
		Size: 2.6 MB (2553731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6963402bb1275dfe8229b81819170e2a8652a15abb41fdedc2d0d85d4149759`  
		Last Modified: Tue, 18 Aug 2026 01:20:32 GMT  
		Size: 9.4 KB (9437 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:81ed51c0e5737ac09d7445c8b782b4b74cddf4829987f8c0cf82a08fa97a07d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87014919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eb8dbf88badfecad00f899c319acd429f6d96d7b4cf674394d7347caed4159b`
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
# Tue, 18 Aug 2026 01:20:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd128e4540c7d2e9df3f71770d18bab36e9a2ac751bca69940bb6ea10febdc04`  
		Last Modified: Tue, 18 Aug 2026 01:20:19 GMT  
		Size: 59.4 MB (59394466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bb327f2f042adffe6d0d4319acacf1722acf20746ec7bb7f9e57b3d234f51858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9658e6a3554db6de5f1c4ccf6c894141a5fe94a7fa718028b57843602ba11e7c`

```dockerfile
```

-	Layers:
	-	`sha256:05706010bb70885caeb3d6e3e16de016d4f4b76a84696ebf7dbea686636fb187`  
		Last Modified: Tue, 18 Aug 2026 01:20:17 GMT  
		Size: 2.6 MB (2553434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acb9c5c219986695128bafd828b0ae019cfea8de23303bac647564a83999237c`  
		Last Modified: Tue, 18 Aug 2026 01:20:17 GMT  
		Size: 9.6 KB (9565 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9af07359ce549a1d403011704b3ee9f2b2fa4f2ae777840153c5c1919aa5bc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94267607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62371eeff75d8045c13b0c6a29271f6532b35ead530115c750cce02acc2f07f`
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
# Tue, 18 Aug 2026 01:34:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:34:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:34:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507bf0a6197e46f86587502e5c9859f3c76fd397cc19f677890fd713ee436929`  
		Last Modified: Tue, 18 Aug 2026 01:34:47 GMT  
		Size: 59.6 MB (59629462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4187999651656ae9b9786c668389f1b4d707da22206a78f3e8c60a7f8587d051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b425e1c95acc5932f67a031bc8e045514aefa7f9fb4da8665d7c144f34a89758`

```dockerfile
```

-	Layers:
	-	`sha256:6d9e2c94cf6331d82754af8f26a912f6e500c55b2aaf7f87073b64a50dd89ef8`  
		Last Modified: Tue, 18 Aug 2026 01:34:46 GMT  
		Size: 2.6 MB (2552645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e79a3ea36e1079a935fb7247d9f058aebc62e3684942a015c681ec5887fb10fd`  
		Last Modified: Tue, 18 Aug 2026 01:34:45 GMT  
		Size: 9.5 KB (9493 bytes)  
		MIME: application/vnd.in-toto+json
