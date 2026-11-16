## `azul-zulu:27-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:ecef59594158ff0e9778d1324022ff2990221114ceb83d2f3a75a4dffff99712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:665dc5953c8e9703bcb47fae68ed5bc1184c983964d45d4324b6304367bcd2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160403363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f7428c18cd444fce7d92214a761c21933dfd5669bf4baa2744d4e621d8542a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:25 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:25 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:25 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07d5769038a5012487a4ce73993fcb3e5cf7bf45a265ceb2a5973398a15f83`  
		Last Modified: Mon, 16 Nov 2026 22:10:39 GMT  
		Size: 91.0 MB (91032883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a7f09930d5f43872886fbf3e51c0e53cef9a8969d8f080e6641f2e7eb263f8d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414193b5f38537d9ff995a5447278587b2bdba708f9e3e8786e6ebf69fd5d66a`

```dockerfile
```

-	Layers:
	-	`sha256:556578dff0023b141c042a6321ad7c359f50f75994b508205fe19d4ee0df5c90`  
		Last Modified: Mon, 16 Nov 2026 22:10:37 GMT  
		Size: 9.2 KB (9154 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e36112ebb829713f22a360f606f6ac6aa5a0bf53eaeb1a0ee6aa297b89e025d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158868707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832e90e10f5d87fff768b6e2b68475d9f02bb12481a5dd0f26a35606e362212c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:29 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:29 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:29 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749b8e5062c9f23dcee2da0fb63335b30a41835e01e708c3bba1685eb7984b95`  
		Last Modified: Mon, 16 Nov 2026 22:10:43 GMT  
		Size: 90.9 MB (90918133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:efa502a46898e1920e2da74f83784eb131a784d41d57099925626ef094f8e977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9377c2721a9e748c7b9a9129c0ffaa0760918b5bc81c54969208dc9616a02518`

```dockerfile
```

-	Layers:
	-	`sha256:b6842b26bb64e1674c5ff012ef1b7648dab5ca543f7c94048fe529e729653e23`  
		Last Modified: Mon, 16 Nov 2026 22:10:41 GMT  
		Size: 9.2 KB (9246 bytes)  
		MIME: application/vnd.in-toto+json
