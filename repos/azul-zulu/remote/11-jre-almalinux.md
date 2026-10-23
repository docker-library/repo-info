## `azul-zulu:11-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:076dff062504db320a66e9d05c210cbc282fd83147c12c969c5361bf8d710ffd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3690f9826987ec74ab5f32fa656c7712ba83830e99a2a5a9833dbdacee43cba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135164432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f647964cb9aa12f7c9571fa18694e3f7f2ee07ad44a1f0d7187e1de04a373225`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:00:35 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:35 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf12791642d7928eb67e18bfc213e702fc9eeb886567d356ed664541ba3f1c5`  
		Last Modified: Fri, 23 Oct 2026 20:00:46 GMT  
		Size: 66.3 MB (66284878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:323268044155f602046011f4ad9d5192eccf034e195b0a28e4112e3ca3d4d477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3a6368fa60cad5623f4caeefc29cf23cccd2011af2ddc438a2f16b6c52478d`

```dockerfile
```

-	Layers:
	-	`sha256:1507d877584731b0b50183ee4385b1d8154007a893b0dc1b89bc3077440bd036`  
		Last Modified: Fri, 23 Oct 2026 20:00:44 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a847744fc67299a3054680112c8276fd8debf940471134774ed1862c94ba6dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e77783aa95c9d8892688219f8246456b8ee62cab16e87d0000d85e2433e1113`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:01:18 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27236560ecbf0ed7587cb875f19ec7cc51eb048e89066520b13189f72888e6b1`  
		Last Modified: Fri, 23 Oct 2026 20:01:29 GMT  
		Size: 66.1 MB (66111439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8c3ab54c827810c0f452d5f21197a537ce54c2b72a38ed5662a5178156cd2372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9d17717e383af50ab2bf4015740dd1c33ecaaa4f6f0171494ccdd791e1e720`

```dockerfile
```

-	Layers:
	-	`sha256:7d3c4cc9ccb66597f22eb6fa6a3789bc6f1af016159f8ef95c15a94350a335c9`  
		Last Modified: Fri, 23 Oct 2026 20:01:27 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
