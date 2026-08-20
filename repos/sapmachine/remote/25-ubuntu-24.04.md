## `sapmachine:25-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:09a54f21ea4b13ef2a35789a2514ca2a56c40591b9dee471fb58ed4f3c77c589
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
$ docker pull sapmachine@sha256:3e39ada91d653b01492cea99dca2e1337a139bbff043a9d043d602e3b72f8c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254800083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e304b0f9c74cb69dfacebc17861f52dad3bb43d389a218119461a02844d24cf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e803a7d64da6114b69afc465ba6ab7908dab94527c8ed2eb6c4682e824445b2`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 225.0 MB (225047276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:54e26d07ccb6552ac0ecc4104d20ca8442e8b798a00c099d6b72471cd07597aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada367ace95ceb78f6a0fadf3b5a850805e49f46b50ff61462e1d676355f01c0`

```dockerfile
```

-	Layers:
	-	`sha256:7c77e568f3f8defec0960582d7942fc7915be9b60b5eb730a11bee93570bc0ff`  
		Last Modified: Tue, 18 Aug 2026 19:29:19 GMT  
		Size: 2.6 MB (2599515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55b2d6451d9081b526b5e7b6d3967d8b735b1883a7fcd3db6ac1ab0f892391bc`  
		Last Modified: Tue, 18 Aug 2026 19:29:19 GMT  
		Size: 14.8 KB (14841 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:cec3614748a85b1b0396b9d86227cb4f277e8a523b1cf2697e59a7ccdd9feff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251707897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e34fc0bbc7eb8e957dd5b4b72c58a24588df6c8db13c219bc7044b59611d6f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecc06af2e88375c356040fb2a17615aafadbcb9c426e8398a0a268889efbf5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:56 GMT  
		Size: 222.8 MB (222820662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:550524f576094814b484d2548ed7b6db30cc435b1cb556a6701b2e0562f3156c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e92bdb4ffc050b999328de488a603cc387f49c05404286ca7939b5b29a0c12`

```dockerfile
```

-	Layers:
	-	`sha256:ead833fa43ed0af54a13d666b604b866e1f00cba1f43a15764cca156f040d34a`  
		Last Modified: Tue, 18 Aug 2026 19:29:51 GMT  
		Size: 2.6 MB (2600208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ffe4f01ff1d8ac3ecf02de35cb00105b620c6f531563afb44ecf575a2938011`  
		Last Modified: Tue, 18 Aug 2026 19:29:51 GMT  
		Size: 15.2 KB (15173 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5226271207718e2e6981be0603150fe40c969dea3c8b257bff2ff764855303cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257618478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d61ca4572f6f5476261f69eb9269e5088be1322018d21addb5dce1a8ef47eb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:37:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:37:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 19 Aug 2026 22:37:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cfe66007b1e54f1c34bccbb53a9ffb5d4cfac0347f8ae958b1555f30ac8903`  
		Last Modified: Wed, 19 Aug 2026 22:38:18 GMT  
		Size: 223.3 MB (223307283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:be9bcbec18879a450e493d9a93373e9447196829b249e5798b870cf57829b470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2611539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf82095175753bcdcdd8875c97a0a8e77a636a00ef9e4a67fcc55bbd58702dd5`

```dockerfile
```

-	Layers:
	-	`sha256:818d9f46c8c2b212c32a3d4f7c79029464104bca24c81245a7402a7b598dd796`  
		Last Modified: Wed, 19 Aug 2026 22:38:14 GMT  
		Size: 2.6 MB (2596539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13fa877254255a298d57c77008c90988a93febd0b884ca8441949164e035e443`  
		Last Modified: Wed, 19 Aug 2026 22:38:13 GMT  
		Size: 15.0 KB (15000 bytes)  
		MIME: application/vnd.in-toto+json
