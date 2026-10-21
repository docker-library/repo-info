## `sapmachine:25-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:a4d85bf05bf1bdabe1010801c432470b3577c155ebb60d9ce24bb33ab23bda35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:06ea7ed8502ed24b1eca05ee36cc9d19435d4388f688a62928facc8b0fd650cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168543791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7875f4be9e1e14b1255dc7ed3b110a35a6c554f4f97394bb638fec7474389d3c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:13:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2240186b0a56a6128925ff7cde788c2b723569b9c8d0f76642366d4451198c6`  
		Last Modified: Wed, 21 Oct 2026 22:13:36 GMT  
		Size: 138.8 MB (138778033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:77be810b2486576bc577129382bb70b35292d7fbdd57dc795184f71499172376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fe0167c1295f1fdbae4b05a15786d585e774562a0f1ebabf3f1099d1a465b0`

```dockerfile
```

-	Layers:
	-	`sha256:a1c4cb9fadb820c1a3238d0d0b45cb755766bc1872da4ff2cb7267567df99113`  
		Last Modified: Wed, 21 Oct 2026 22:13:33 GMT  
		Size: 2.6 MB (2555002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08d6dcd28c2e60bdbabf5593dbcded0df0da3305cf37e9bfae2ef0029dbb16d2`  
		Last Modified: Wed, 21 Oct 2026 22:13:32 GMT  
		Size: 15.6 KB (15579 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:462a1bdd366895836f76eb0e7d2fdf50a2128b0f18dd97076370ca9515e2b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251807359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4954a24847af692409ed1f556c7562a58cca65a8c035b7c128a7b50f534c63`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce32725b0c2d659ed8a56bf7b1b1c88cc1ce9db088f4edd2827ab1de1214f1b`  
		Last Modified: Sat, 17 Oct 2026 00:39:33 GMT  
		Size: 222.9 MB (222867598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f5ff0c25ecc2935d117dfbee43392e558db72a21e2d0f33fca279d2b1c64e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc13883acb59c830cd71af294efbd6fc8772bab6ed17f6048681194eb552dc`

```dockerfile
```

-	Layers:
	-	`sha256:28a6023cbebb137a7492da32b69519d4b57d93f5f4efe69415ab47c5cb42fbe6`  
		Last Modified: Sat, 17 Oct 2026 00:39:29 GMT  
		Size: 2.6 MB (2600286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e872c25112ccf6540e6f07b5ff2b2fcfbeef3df529dd4488fa2de00d0a724cf`  
		Last Modified: Sat, 17 Oct 2026 00:39:29 GMT  
		Size: 15.9 KB (15946 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f764d581382bef4cc1dc71dbd20ec800f5fcb38d72c3af2e2f16228718a053e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257695286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5652ab5e40463a2f43e839818e3f67dd58607091a98746187599c18ba78e03`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:32:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:32:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:32:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c9df17938c8d63512c7969177094ab06f126e6f16cb591343b7c0bcfe35dc`  
		Last Modified: Sat, 17 Oct 2026 02:33:26 GMT  
		Size: 223.3 MB (223317296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4aa84f27b77154135cf1abd6a9992aba4a8b339853213484cf66e752b85553b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5137ca95228fc3329a841d88808ae0b984f0cb53c6fbf5b0de2706c4fc8b943c`

```dockerfile
```

-	Layers:
	-	`sha256:69358360ab56ad71979a37013bd3210ee5bd015fae1760e8bedf0bf6c1b3697d`  
		Last Modified: Sat, 17 Oct 2026 02:33:22 GMT  
		Size: 2.6 MB (2596617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1400fb239c9796a8a25de7ad26a16b93a03bc264b6c64d93f957b32386a6ba0a`  
		Last Modified: Sat, 17 Oct 2026 02:33:20 GMT  
		Size: 15.8 KB (15770 bytes)  
		MIME: application/vnd.in-toto+json
