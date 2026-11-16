## `azul-zulu:21-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:3924ee00fad20b49db4b1655ef937e5dd61da5d93e478b88c04b64b19bbef2b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:07863bd3c64bfee8dbba49af0ae4ae001078b2f00b7209725802db17946ade9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234755001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ba23223ec4868d26292efc11f2032d7d2e050936a50ba6282584f3e9c84756`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:28 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:28 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:28 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2f3c4a48d932dc9f689ad9869638ba652b39dcd5717074810ecf2475cd3fc2`  
		Last Modified: Mon, 16 Nov 2026 22:09:45 GMT  
		Size: 165.4 MB (165384521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f2da74c1b614b8f7e8a91ae6c06c932a034571caef892682a2796860545cf698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7910067c83b86af513dea8a27b55daae842e35293b408bea278d6282cbd61aa2`

```dockerfile
```

-	Layers:
	-	`sha256:299e5d4adc24e7176ddf09724fc0c038b7bb510a4b8ddcf85702cf23b5b5b07f`  
		Last Modified: Mon, 16 Nov 2026 22:09:41 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5c03970570cd3d40d86a7be39c5040046852e8adc002c249e950497b0e14c76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232643943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c8996fcdd2e7860166f1b1e5243dcc88e13924582d0b4603be6654c611840f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 22:09:20 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289908473028622c9f3f09635df58a10875d514dc7cea378d3d3fced7071c332`  
		Last Modified: Mon, 16 Nov 2026 22:09:37 GMT  
		Size: 164.7 MB (164693369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4241aadadf3ccbada44840849c0a5ffedebd68386439380bf399352bc12b05b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98504c2a383360802fe1535f214a8fadbcfe9892a64c6236e57f636b0aff0b7`

```dockerfile
```

-	Layers:
	-	`sha256:df30da5457cb250147ec1cc657d27de5a872290ab5e593f139c92ab27c5fade6`  
		Last Modified: Mon, 16 Nov 2026 22:09:33 GMT  
		Size: 9.6 KB (9602 bytes)  
		MIME: application/vnd.in-toto+json
