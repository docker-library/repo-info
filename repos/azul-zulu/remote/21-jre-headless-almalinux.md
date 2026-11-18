## `azul-zulu:21-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:59f553894f04fdc256831a73faaa9a04db145860235056dd22b9a7bbe7ebe220
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b40eebd976d414e4a26801cc9ebf1bba03e8ce4145ac8b115a7c5f9b048d5445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145478160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c30fa91ae36a0be381e5c673a36447f4c806dc0666c7766bc23c433fa2c03f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:42:21 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:21 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:21 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ccd3a278cd04bb08d1bd3287ddc26aceaddc9fc071b87cb3325adc836589bd`  
		Last Modified: Wed, 18 Nov 2026 02:42:33 GMT  
		Size: 76.1 MB (76107680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:92cf0b7e91c82f51df6372182c19c9915f304a244ced6281df539b292a627e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9106c0a868d40810c37108ef9b194a948db24c2c889a15f1cfaa2e966c4539b`

```dockerfile
```

-	Layers:
	-	`sha256:cef04710ead6709ff9ef25bdbb6a54ab4514ac5190e3e77c25beb8203c60361f`  
		Last Modified: Wed, 18 Nov 2026 02:42:31 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:61ee4e35e8af0fb3e48212e7106f3ab8523c29cd80cee738556c68a844db2006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143707781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17283555c4bd0541c9b17e0a7799c0027ce232bf8ee6a192ba8fb93e4684a5a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:42:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:13 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:42:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:42:13 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821ed1e8cd6e8b15ab4ef45fcd52eb732d5d36a40f001b1e1f89da864579c85a`  
		Last Modified: Wed, 18 Nov 2026 02:42:26 GMT  
		Size: 75.8 MB (75757207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:593e2ff42434bea53df3f4bf5783605f8bd8452282feac7d40dfca92db6affe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852be9e0cf7cdf2db7ef0b766f2e2374379b32b5f664fc8ea541247621daa8e7`

```dockerfile
```

-	Layers:
	-	`sha256:4320de9cb867db8ba791be156777e305025d29bdec99ceb89830ef9ffa915c09`  
		Last Modified: Wed, 18 Nov 2026 02:42:24 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
