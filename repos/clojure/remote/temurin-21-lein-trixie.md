## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:c856e6b10268f3eab40855728cb4d086924d984e0b107ab611461db003da4366
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:80475745689ade50a683bbf9e79dcd3d9c566343591ea18e09bdd4c9500915fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231222804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d769f3898a4741e1b609e21e5fb01bd8c946057c3c6f97bf6fb29225a3c983`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:09:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:09:42 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:10:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:10:55 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:10:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:10:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a1e44109841e631bf5e761fbd70d2a93f8303a295273afeb6b26881185cf20`  
		Last Modified: Thu, 05 Nov 2026 08:10:15 GMT  
		Size: 158.4 MB (158409464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354fd2f0ec3621e1a063261759dd37a5443ac81db1b9d5764c96245b30461a44`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 18.9 MB (18885189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b527953b0394ae9d0be810e8caebfbd6aa28b07d29252ecf032dd5329ed68faa`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802bd8b6785a6a2b96b0d87fc378496e3459971c39b9c386f71b8904ebe48a8d`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:491b2159ecea5c5911e9f987bd1000a0772742c066040dca3904c907437a7dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f967252c78988b544dcfafe787a46c1b7d4d4cf9c71da5745cc08fa8d2388e2`

```dockerfile
```

-	Layers:
	-	`sha256:1b91e7b6ec1ff9101e91ca6e39b672d3f1602d83d5113ff089854f7e11e833cc`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 3.8 MB (3828314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae7c17da7c7bde3444a9215162b69a6cb69a48efc3cdf7ee64a02d80f4a00791`  
		Last Modified: Thu, 05 Nov 2026 08:11:14 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0c7cf4ae1e4b9d4654b8fd458fa0238a38e17b8e72f58e297e342afff218f3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229828663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9c7c8a42ea78ed99c76c82290901b4d94781a752d330e3529713244dda08ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:18:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:18:34 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:19:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:19:52 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:19:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:19:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29a81ae0354c42d8295eaaa8c79d56b7066588a0355cf8b8ad18f3566f3222e`  
		Last Modified: Thu, 05 Nov 2026 08:20:16 GMT  
		Size: 156.7 MB (156691631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37d423797170d38939d908ad7cfc24042725627ec5d0871aad6324d03ec8690`  
		Last Modified: Thu, 05 Nov 2026 08:20:13 GMT  
		Size: 18.8 MB (18842789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c5942898430a9480200d62f26a4038f7792327e4c35eb16ee0a402032e28eb`  
		Last Modified: Thu, 05 Nov 2026 08:20:13 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b791c012298a21da36daf9f48e4108fe54afd7527f7fffffaff885e3a6a769`  
		Last Modified: Thu, 05 Nov 2026 08:20:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cbe0c52ae2714b52df271b09b80c6460d1a87eecbec11180472ac8c3c1ab5907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4eb8d25aaed3f4c838f73dc3c66e2e52c40e6d6e8f8685a105f018cee3f5be`

```dockerfile
```

-	Layers:
	-	`sha256:7cbc2a65d96355f8b86b3fd1a184826e481abd0d63dfd07b689141e085d20a66`  
		Last Modified: Thu, 05 Nov 2026 08:20:13 GMT  
		Size: 3.8 MB (3828554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98476f83a6b7161697042d688174afe8f23cc74381794a8ba264ce1ef2823b0a`  
		Last Modified: Thu, 05 Nov 2026 08:20:12 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1225c10e67285aa1ecd4903c3432ec3ae35d8647f85071e8d34c6c31cb1aeaac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234250562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52325724147ddb0048f671ce0a7ced99ed4b3d9e9cb83c46c3a912f080a4d476`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:37:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:37:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:37:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:37:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:37:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:37:55 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:41:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:41:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:41:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:41:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:41:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:41:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311fb72f126c25254fc06b361c0ee7992e00f2ec852a95f0b55faf65bec2177c`  
		Last Modified: Thu, 29 Oct 2026 19:42:07 GMT  
		Size: 157.6 MB (157573262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65609ded1bca9793c25bae9a3d540f1f6aa4ef89d08ed00d8f7f350b84d0e4a3`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 18.9 MB (18939418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42c7947b92e04139bcf124aca11f1feb66a97e80e689a7de68b77b7d424fb62`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a8b4988008bbf013f37df4563115ef05f5a851f550dfc2b19068560316ce95`  
		Last Modified: Thu, 29 Oct 2026 19:42:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:75b5d201c8b385225150d1e8b77fea48d9f3898e6f7ca39cf776ace4e953d44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e81f6953ea8f6e4d9b7e5e7f6b9718bcc1d1e7ea1650f4b3cf2699304361d0`

```dockerfile
```

-	Layers:
	-	`sha256:95f9fa8b276ba78f98f936caab0feb5725c91c1adef4e8f1b7b8c2ab0bae8d1c`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 3.8 MB (3828066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aebec1c52b039702cfb972c6318d87e4eb23e211758313bc13abd09efb4980a2`  
		Last Modified: Thu, 29 Oct 2026 19:42:03 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
