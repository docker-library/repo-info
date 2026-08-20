## `sapmachine:26-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:4f6fe786a03385a18d8fa60565c1a8e91225aa421e260fd9f8d7581d75fb78bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:775522325c3abd02c5f362426e321fa91f6a8d84c26307c94d01f8f9bebda80d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170633301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af203fb14b8049f1b0af78a147afbcef1f2de2b4ce9d4203944c2b8f1600ef66`
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
# Thu, 20 Aug 2026 18:05:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:05:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e520275923a2d2ed80a96cd23af9730f0b78b9ce67a0aaead636dfd8b6bb80e`  
		Last Modified: Thu, 20 Aug 2026 18:05:37 GMT  
		Size: 140.9 MB (140896358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:451a44e942b6535b0a71669ca537975e436e3c0e0cccfa3cb53b50059e378b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a73baa486d1857cc960f3c8f4524b19c27605fb485e7c83d8591bb9dc7a9c9`

```dockerfile
```

-	Layers:
	-	`sha256:6f9a0b71f51a7da4d0df84ab726096d467712ab7b23bfeafa0465a20481554f2`  
		Last Modified: Thu, 20 Aug 2026 18:05:34 GMT  
		Size: 2.6 MB (2577065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16c4c010d1b6211e5e5ace739473329dcfab0b59e73504a707139664cded44a2`  
		Last Modified: Thu, 20 Aug 2026 18:05:34 GMT  
		Size: 12.1 KB (12126 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9179ed7bf3a7a6cee89cd2aeecbeb1628b8fdbf49997849104f88fbd897dd346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167528959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be204d9de06ab2f843385f3a56ae3c3238588b79f66219feefd4efdac982c6cb`
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
# Thu, 20 Aug 2026 18:02:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:02:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e508381dc65bf8ff6550faea7c4ddd0158479d57f6e061005afb4c3a371cd826`  
		Last Modified: Thu, 20 Aug 2026 18:02:49 GMT  
		Size: 139.9 MB (139908506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:910ae4215e5cbd6da850b71a49b4bfc7d774a1d64d918034ec2a941d6520df6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd023ebe3b37b6a3356b0279eb65eb38564973cf983978c67018969f3e77fb1`

```dockerfile
```

-	Layers:
	-	`sha256:4caf53f933997c19518cad2482a6f06a0e3068c643349e53da9db0ee3274111f`  
		Last Modified: Thu, 20 Aug 2026 18:02:45 GMT  
		Size: 2.6 MB (2576840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c33230e3faab28f7bfe8347e736ed01df93fa3d78e012c38ad3a2a146c62d49`  
		Last Modified: Thu, 20 Aug 2026 18:02:45 GMT  
		Size: 12.3 KB (12326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:07d02b300d2b929fcb7550fe07151c8edeaf73433e80c7a7fc18ddefc5854f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174547789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a308e8da107c3b71c0cfd8dc4fffe183f817e3523d841ed2eadf7ac9d22f90f`
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
# Thu, 20 Aug 2026 18:02:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:02:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070c8879bdb9360ccf44149e65fa6d70c47e76fed5b94b699fe87e0580e58417`  
		Last Modified: Thu, 20 Aug 2026 18:03:01 GMT  
		Size: 139.9 MB (139909644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7077dcc5ea9608048059e8a27d876424e3f8f4df7dab70d9e3a5b13c9b5c1a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aca4ed71f23fd598acb425f70db3b631214d2c52af982160f3b03f6de815baf`

```dockerfile
```

-	Layers:
	-	`sha256:899e0c830d7f59b89037360201544fad8c9318b28276196cd1fa51e6e3290f93`  
		Last Modified: Thu, 20 Aug 2026 18:02:58 GMT  
		Size: 2.6 MB (2576015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f392f9b38b0744c41511850771d150bc1927ab8a8f9c7502dee822fb8a179026`  
		Last Modified: Thu, 20 Aug 2026 18:02:58 GMT  
		Size: 12.2 KB (12218 bytes)  
		MIME: application/vnd.in-toto+json
