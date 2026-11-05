## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:472aa05349a2e5265e3deef0be983443c0b63ee1fe955b3171e01ec08a057c52
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
$ docker pull clojure@sha256:993a012552a3df5bed18b6890cbb346d24cb24c0469ea2bf3ac1a09d65b683dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234253671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fe68a3ee682ad68b0e8192dc06efe4edf2b382597ac248b10452d774d67cf40`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:52:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:56:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:56:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:56:19 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:56:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:56:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:56:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:56:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77324a11848d877bac9af5f0ca39315d93ee1d02d9b33c1cea449a77e36efcf`  
		Last Modified: Thu, 05 Nov 2026 15:57:04 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097ee97bbca2a67c6dd07bdf318732c038b92bad51b6ce6e96f5f324d736e8aa`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 18.9 MB (18939187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3d7077a930754818bbc4eba4e4e61d5aa4ee946677aefa4e8cfaa9e7548985`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e88717bcb8e02fcd5b8884f91ab0b27e1d1d641bbd83a57e1e634309fe20701`  
		Last Modified: Thu, 05 Nov 2026 15:57:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:995cbfd8046e1e83f80635b99266a50e9a9d27bca215033594dbfbde8fc94532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bcceaf056367bda489fb1c0f872bebe81fab82ee02963ba1ba50f6393e6571`

```dockerfile
```

-	Layers:
	-	`sha256:e629175c286a4479902298ab1867af1913e644c9bf9b2172572d793ac4465c16`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 3.8 MB (3828066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c056e2604b499be7512fe0650bc15558d29d771bbbb9978074d3519299e8ecf8`  
		Last Modified: Thu, 05 Nov 2026 15:57:00 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
