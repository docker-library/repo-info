## `azul-zulu:25-almalinux10`

```console
$ docker pull azul-zulu@sha256:e0dfaf97e4056d9358b088e2a08a57122925c7dcae532e80ddf80f49d306efbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1b0357a72eca01dbca64e8bf05ebc60ae908db90a5b4453e42f3954a7685993d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252617207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7c07797cb3986ff6dcdb5be5a88f66d58a522ca9a73cec40eb3868d279f21b`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:55 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:55 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:22:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501ea56a80eff50562bdcf6578f2c1477a495bf29d125432ef1b56d71f849b54`  
		Last Modified: Fri, 02 Oct 2026 18:23:12 GMT  
		Size: 183.7 MB (183737653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:85a9cde577c2b6ba10c7fb03fb5767d6baace17d0d7fa9076bd092cd44508ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9cc7d80212fbfe93d3085d1bec4d01ea8a9ce6329db30ac0f7120e0fed9de1`

```dockerfile
```

-	Layers:
	-	`sha256:6ef31d1cfbb7cd8e79bd189df84d90b921369de49fd4f79f473bacebec5d1245`  
		Last Modified: Fri, 02 Oct 2026 18:23:09 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:241a78e6083858f85f5d2d1ce49f3608dfed04e88a2c86f4035aff7d62b4b5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250314679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6361321018246eba1658b82afbc251dcbfc5db469a540fcfd91b94e2f51bd275`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:23 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:23 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 02 Oct 2026 18:23:23 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1bfad1608a385d622f834e8ab3faf0c81bfeca9ecea838fefd2fcda445b6db`  
		Last Modified: Fri, 02 Oct 2026 18:23:42 GMT  
		Size: 182.9 MB (182856495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:30cd35a4c534ef4f988efb992c6fe16f8c562627d6f183dcbddf86af342d92e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b271dc27a75c6e71c799da5375521e5a191f28c927636bab0c90dcee733fb685`

```dockerfile
```

-	Layers:
	-	`sha256:e69199fca2c294194353274020a2971ef0211d95fe9b7c6655054937d247fa6d`  
		Last Modified: Fri, 02 Oct 2026 18:23:38 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
