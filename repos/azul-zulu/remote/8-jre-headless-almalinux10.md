## `azul-zulu:8-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:56e34262796a4ae7edea97464823618f65b934f3054ea300fcf8826ca0074a19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7367f513e93bce323d6bcd33206c4e7726777dfcf1eefd4af3f1d7f901cab0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118164893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf36fd21891f3585d1fedd538e58c1552b656656c0fe4acb5b4f5ed31577ac98`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:41 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ecbbbae08bf28095eafe769dafea5ac0605d0e43164aa6caf69b18acc80fdd`  
		Last Modified: Wed, 18 Nov 2026 02:40:49 GMT  
		Size: 48.8 MB (48794413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:18bcb7f26b33a2a6ff31c576b04124a04264ea0245ce89174170fa2285feec0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199ad60f93a23c0449ba0b5b9280b85fdcef93eaad27bc00713ea3bfbdf1656f`

```dockerfile
```

-	Layers:
	-	`sha256:335b0d74845b6d61412caa7ff5dd9ef34e5fa549d54d75834301d622c1f74fec`  
		Last Modified: Wed, 18 Nov 2026 02:40:48 GMT  
		Size: 9.2 KB (9221 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:36351310240a31e53bc711699805465620aefc406ede485d97c34aa3665b3877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116939429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c75e9e95d1d73f2d2e3433ba62b2d399da7172d129b521687debccf02cc24b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:40:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:40:31 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:40:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.514-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:40:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 18 Nov 2026 02:40:31 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac60b619124ddc617d699778946e9cab530fba70f84d2d9b7dfe1161cf688fa`  
		Last Modified: Wed, 18 Nov 2026 02:40:41 GMT  
		Size: 49.0 MB (48988855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b6ccf93ed977ca35dc8236dcb858230c0cefdd43f3bf50bf1846a6cdeb868a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44582cdaaf0a59258be2db59758c64cd6133f877e4b484115d0478bbd913de6e`

```dockerfile
```

-	Layers:
	-	`sha256:ca91cbbeef03d5c77e43af0e0b8dc9ce7009e349d5fa1e7a575167d676e208e3`  
		Last Modified: Wed, 18 Nov 2026 02:40:39 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
