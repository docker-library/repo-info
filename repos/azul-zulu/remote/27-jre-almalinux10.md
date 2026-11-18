## `azul-zulu:27-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:a8cadfd448fe92c8d75136d6c8dd36f3a0185bf7b3920238db8ddb5bbee3bb92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7103c71886726735fa1d86a6dbab9a9970c79a9dbb83567fd907993396a55825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160414364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1506a83cdf8d6a3e7e3161fc50324cc27382c83d560fd40f8719fa819a76b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:40 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:40 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7edea33ff8f9da606e067a267854a1320ff94fdec836c376f06ffce73ca560a`  
		Last Modified: Wed, 18 Nov 2026 02:43:53 GMT  
		Size: 91.0 MB (91043884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2c193283e26f095ffd3de7968e7fea59b482cd89d39792db678a747fd539953c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f647b8f93d066a8c5a1145976a55d0b5a87004662af77e744e60a886f116a071`

```dockerfile
```

-	Layers:
	-	`sha256:3f5d37999e82b99c1a8657ce88a9725c4470e635b24e6d197f8d77545c1ff5e4`  
		Last Modified: Wed, 18 Nov 2026 02:43:51 GMT  
		Size: 9.1 KB (9143 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3007c05b6d7aacc491ab7c0687ca52ecff1903ec3d46832eda5e37154f58a5a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158877174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d3761ff15295eedc5458bd766aed1374ced98db1d79da37dea353855cd0060`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:40 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:40 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8f3792d71373e6ba6870fdf51e8ce563e8eb34966b67290d187235201625bc`  
		Last Modified: Wed, 18 Nov 2026 02:43:55 GMT  
		Size: 90.9 MB (90926600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:641bb9b572f6034dfeea89d81b214314eddc45b5f4ff51e4a9ca481ed3bfda3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e4bae31964a2f046c0445720200c72b2767ae051fa8d38a031a4e649b81789`

```dockerfile
```

-	Layers:
	-	`sha256:e34f1a786882b42f129d0b2a9a1599a0f4927465f066f25d9dc34d4c5dfde489`  
		Last Modified: Wed, 18 Nov 2026 02:43:52 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
