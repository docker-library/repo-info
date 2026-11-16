## `azul-zulu:11-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:53b39bcaedc94b40fc6098a1ddd226a1eb3762d74d0b1e544197f1f8e89f6229
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:237f014fc97f9de877b3f0e63483d45b62d172d6e442681524440e57fa9d452e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135631159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1d2de009a4ec963629939b41e41ce342a9e48a9147871f4386dbc5300e5372`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:35 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:35 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2bb8c0f1ce146379cdc170ce61f5714244f26aad595db00d664b2bffdc7211`  
		Last Modified: Mon, 16 Nov 2026 18:10:46 GMT  
		Size: 66.5 MB (66505380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:848576535969045e4d7f4f16c44e594cdb3ec5522ef3dbcd25f04e218070e751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b260682e846b64987721eef6882901192fe17be7a12f296c38b57aa8447b46f9`

```dockerfile
```

-	Layers:
	-	`sha256:49cb2e2fcb81d9f8d47b986e04d23de5202d5caaaeb19bb570241c3568d65ac4`  
		Last Modified: Mon, 16 Nov 2026 18:10:44 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e1626147986d8cf006654282425ed8e16c0a5ce0542b0eedef60ab6b134544f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134022670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1069c8c7d2870dbf0b5c5f6c34cc44bb89e3999f18fa11910189ac3b2ad36470`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:23 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:23 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:23 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488d0dd3df14523697b6803b2d56ce04fdaae7df9254866f47cc83a439e81367`  
		Last Modified: Mon, 16 Nov 2026 18:10:34 GMT  
		Size: 66.3 MB (66324854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc1ca5f845acf40f01308b1a6f6a5d96469e606ca7e4189a95097371ce562835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f072b596a4a93cc75929a9f96fe8c80353e808b61c03609ee22c34704862a1bd`

```dockerfile
```

-	Layers:
	-	`sha256:dcc1aab24496c5c43a260c75737249ce7833e49a9077bf2143459c3bae2e213f`  
		Last Modified: Mon, 16 Nov 2026 18:10:33 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
