## `azul-zulu:8-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:7b07beffb1e3f20a4501380cc857623e2eb34cc2477c5f116a8a95e14e2f7dd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fe3722f25f2ec8d5c9a56766c0d498558663a78075b05e17eaff2abea48df3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117680227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a521ee0b3923f85a99a81311710190b2721245493f9c8dbfb8407e590e924d95`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:04 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:27:04 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c83f385cf27272049d144c3fa99e11c432edbbac35efdbeaea764f17eb283d3`  
		Last Modified: Tue, 27 Oct 2026 17:27:12 GMT  
		Size: 48.6 MB (48580952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a99404d16816e37c5ab24559ca4cb94daccbb1bac98c1fd6a4b43d57b43e6709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ceb9da22310a047c3bcb79d91fd551017375c4fdcd244b021d31ad44d291251`

```dockerfile
```

-	Layers:
	-	`sha256:710aa963d198b7c9a37d33ac40aeb626e56ec497ac896a2a848a6e4c05dd3979`  
		Last Modified: Tue, 27 Oct 2026 17:27:11 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:37ae447c883a1aee094304569655a372e461972d70e670d2143d78a5374ee95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116476526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea421d9db517be3019999608230222e6e18d19d9c4854b9ead2f46dbc769097f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:22:14 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98fb485347b0a0a36f99cf7f082dc8561f53783681a7ce0bf54c01c4dcde479`  
		Last Modified: Tue, 27 Oct 2026 17:22:23 GMT  
		Size: 48.8 MB (48810015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dfbdb10b1076b8d9a71b0f3948e2b0ba760ee293979bd90877526a9536275b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcdc3dde027154c6d5ddb32bcbb62cbb2b942e6d36dc1ae2b181e08dd786cf7`

```dockerfile
```

-	Layers:
	-	`sha256:d8f57b1b765f7f03e9ac6634be4c6abdc632faae7c3ef58d93d32552be6647ce`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
