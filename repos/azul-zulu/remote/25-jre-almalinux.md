## `azul-zulu:25-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:5c40296d2f1d6836a4c0077ac93cd61c57c29608480b2517d1756bed1a9b4d71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e615ea9830fc0342485e738ffc54b56d84bee2a953d96ee0ff03c3d66e46c364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159489196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8689236a1150fd9c1dd2a23764da118dc789e4a38673692ff8214ac01efc46a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:55 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:55 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 27 Oct 2026 17:27:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc03351bfc33d72268ac20d16762921e113397bb3c7730dd77e76b7278b54cc`  
		Last Modified: Tue, 27 Oct 2026 17:28:09 GMT  
		Size: 90.4 MB (90389921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3a6f7aa88060f6f113065cf8400fd71e5f10d36da7801e0dcafc588b561f710d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08daeb9c26c5c071a4c2b1bd8489624a285f6944ae4f21e05714bb4ed817b459`

```dockerfile
```

-	Layers:
	-	`sha256:a503406ca856a32cc801c7012f7745cbee53818358b9b34875c9e22848b62a2a`  
		Last Modified: Tue, 27 Oct 2026 17:28:06 GMT  
		Size: 9.1 KB (9137 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a8f915bb85f56c4bc968463309bf4ab4ff3861dce2907733126231a8de0af3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157619151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de136d82a47c27252645198a09718dd77d514a63801dc1fe3f340c69de70540`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:41 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 27 Oct 2026 17:23:41 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e751eef68820c30c6bbb9cc6043a01753f042145c62e352a8061986b90107e7d`  
		Last Modified: Tue, 27 Oct 2026 17:23:55 GMT  
		Size: 90.0 MB (89952640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f4eaddec6c0888765c54a9bf0f6b70379a7fa6fc275b00c6d89e153ab638ef2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c187548630f3af92981b10229dc9c00aa80fff8052d0d107b4e9f43fe85b6d`

```dockerfile
```

-	Layers:
	-	`sha256:f319ae19528febffcde9b705db1bc7e2fd04dd809fa81e67fe4b3bbfe16ced5a`  
		Last Modified: Tue, 27 Oct 2026 17:23:53 GMT  
		Size: 9.2 KB (9229 bytes)  
		MIME: application/vnd.in-toto+json
