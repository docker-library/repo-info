## `azul-zulu:26-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:0997549a9aad7bc37b745e2c6b7c1967465955ff9c98665a497e3840ecf0dc71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f37e905ce49931133e297c009666e1bdf4b1441a0fa849c8e85e56639dd91b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159979354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe5ab2d800a57a1aa303435ec8801da610cf52c8bd609ca1b071325bee41f96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:12 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:12 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867f11ccc290cd437c5380e6e06a18593d898b3082d285507038d877ee9cef01`  
		Last Modified: Wed, 19 Aug 2026 17:37:27 GMT  
		Size: 91.4 MB (91416892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b03f5e66f7454113edd47069d3aace6c5237ea327db7a78ab29b596e2d64e80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2f066df08a75dadf4f8edaeb39a9e20e78655725f202b02565f3bcc82160b0`

```dockerfile
```

-	Layers:
	-	`sha256:a873e2a7d535cfba104fe2992cd4528a980c38d5273141d459d0a104ce9d6eb7`  
		Last Modified: Wed, 19 Aug 2026 17:37:24 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a2a19c7e464c491d30f21a2031a9955d43efae859f308e990a003313367b2988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158486275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a0560bb62325c22ab9efe8d45186f8a786445f6ceb022086c4555bbf5f7042`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:28 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4d94a82191cdd319a5fd37939b73a7402da6b37c3042c7d9080a25e5ffdf06`  
		Last Modified: Wed, 19 Aug 2026 17:37:42 GMT  
		Size: 91.3 MB (91344314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a4bd8657ccceb14701f4d8bfdf86f056dc0df2584f81812c17b8182fe0b5167e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828d59732fdf0281945e0aecbd5ce9a4ec90d89e6fe90c51081b30e527a92803`

```dockerfile
```

-	Layers:
	-	`sha256:c6d748e661d6ad22d3d7091251426f6c26fdb5d3c018f2154ab2cb31d4803131`  
		Last Modified: Wed, 19 Aug 2026 17:37:40 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
