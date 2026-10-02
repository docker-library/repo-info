## `sapmachine:27-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:6688776e5423e2a2875203c95288bbf26cda8dbbf330b68349b28eb6cd426e49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:620de1d982e210a360f267b6238b7b6319e49b442c9d5fd468d27215af39fdc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168968392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faa78fd9c927d6878f7f85331f28eafd0e0423b49ad3f6e751b345d4f61c67f`
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
# Fri, 02 Oct 2026 01:37:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84983762e75f44c53c6d007f9d00471485cc040c7657cbb295de9b24b3e9db74`  
		Last Modified: Fri, 02 Oct 2026 01:38:15 GMT  
		Size: 139.2 MB (139216765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:89a62b96fd5121bb5a2845f9ff9421d22b73f299944732d7d0064c1856fb5ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4e055e3e02eae4c2d5bc928a9a9cea4bcd11a9fbc3f57483d72be27e03f040`

```dockerfile
```

-	Layers:
	-	`sha256:7518e09fb78b2176cea05816f090dc80c6fb671b49e5a54c1536049011574dbc`  
		Last Modified: Fri, 02 Oct 2026 01:38:12 GMT  
		Size: 2.6 MB (2574476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa747cbdeb5164feea144c62ae37483961574df0d9aeb55150a905c2e64585b1`  
		Last Modified: Fri, 02 Oct 2026 01:38:12 GMT  
		Size: 10.8 KB (10751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b5b981de79e02a7f193a46aabb48d553013386f2fe1c95b1a4f745b01d71bd50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165928515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801eae5380a7b5d04e9cad606968842d6d5fe53a02ebb95125ec1b32bc68a782`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaadc03293f33478fd8364ca604239b91198b95b60ec7de735ea14864d428fed`  
		Last Modified: Fri, 02 Oct 2026 01:38:14 GMT  
		Size: 138.2 MB (138244379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:20a53ad7fdc6a666b150db1fcb30826bfa20f90aaf470b8966ebb2137c63cf7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2585107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d19b50958481bcd0dd3439d28f3d784f152bf036014be0de6471b8a89c2f61b`

```dockerfile
```

-	Layers:
	-	`sha256:98999efc4b35c2ba5e07e5ef5e7f160676c3a825f27861ec50ae98cb25c1a79f`  
		Last Modified: Fri, 02 Oct 2026 01:38:11 GMT  
		Size: 2.6 MB (2574203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391599fc7fc1989856d6fdee696e0b917d0d399046333de7817ce1319b0b2710`  
		Last Modified: Fri, 02 Oct 2026 01:38:11 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:48f38cc290a6d6093a4c82907905ddb7810a214ba0ef431f0dfa11c8a6672e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.1 MB (173125344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe512c30322c28213f3184072d472fc4e3fd3621b9ec9a63b5b86de8c973b62`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:42:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:42:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:42:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f6256fe9035153946cfd8bd9b86404be77e337af6bc90278c490e03c5412a5`  
		Last Modified: Wed, 16 Sep 2026 16:43:04 GMT  
		Size: 138.4 MB (138422665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:268d70db605e241ab9d38cfdd8cb2ca7fb1313764d9cf5409802789114fbb3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2584194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2407cfadc9735af274ec2817fc87ed3ddd47bf8e1b79d8ec4d54a52afa361b`

```dockerfile
```

-	Layers:
	-	`sha256:ef0f48c9c27bf28ab7fe1a9724dcdda6e2e33f5d3d49c8dfa550e5f255ae3bd5`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 2.6 MB (2573374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9ae1a154344e823f7c9fafe5c8f8dfd1613d49d140c655850fafeb476ad28c`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 10.8 KB (10820 bytes)  
		MIME: application/vnd.in-toto+json
