## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:637442848b83ccf2310aa9423be5960839ae7f29e21c5ad8a84c8365a8d4df78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:129f832d5a560008440534d32dc5d90459846a0ae08c8fb1842fa28e8064a2a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (198991399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe2eca6c5e2b9823767a6ad0b8ba90c2d00afc030b5df1c89071f07371c2da0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:55 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:46:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:46:55 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb5c6e7187e9f17bedbd1ada33b8c3cf22799a6f687b4d495e2cb8e77271361`  
		Last Modified: Sat, 17 Oct 2026 01:48:25 GMT  
		Size: 145.9 MB (145864521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b9a8c355c0de24404b6e416a895296b502a484f997765f74bd30f7f6d23dcd`  
		Last Modified: Sat, 17 Oct 2026 01:48:23 GMT  
		Size: 20.4 MB (20362293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76ae604c357db72f80185177159287042f6dd0d6caa04bb88241dc57b818c72`  
		Last Modified: Sat, 17 Oct 2026 01:48:23 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e62d6ed43d6e027c32b9cebeba8f6318cccd4948ab3f59bf8f34f2a101e8770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805c47363bcefc66b13e9d05cee539b4487cc5ac5af1b355463e626f49a5e193`

```dockerfile
```

-	Layers:
	-	`sha256:dd1b6ab015d59f67fce913cce006625e061e46e67a417bd87d940e1ab66503a1`  
		Last Modified: Sat, 17 Oct 2026 01:48:22 GMT  
		Size: 2.8 MB (2757134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03c2683c995e06f4400327c4a5890edb73c9da1e362e7a28c043de3cbe79497e`  
		Last Modified: Sat, 17 Oct 2026 01:48:22 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8f69fffb8eaa4f20799dacf0f154ede2ea3c17b9620ffb9b506133dfbce22514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 MB (195385205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f58c3de738ce6a81c491d1e07777273c5f263c225e8321866b4fcdb67b4948b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:47:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:00 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:47:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:47:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:18 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e94163419212539aa288eeaa0853b333e36dd2ba4b6f983a6dba92a822e3a7`  
		Last Modified: Sat, 17 Oct 2026 01:48:41 GMT  
		Size: 142.6 MB (142576555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e031523d4d8c7a70efacf8fe0f2122b76e80297fa1f2020b3dce1989353671c`  
		Last Modified: Sat, 17 Oct 2026 01:48:38 GMT  
		Size: 20.2 MB (20156227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a0f0fc0b225b601e73a821b116b9b12d81dc843132cff1e45731f438321b2d`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a0ebc9debf7a04cfabe7c8cb31cac1112d8bba49501f914f74822a43bca82381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96445b233b25c2b4e045100688e14ddb99455f27c92bfdc45a6d4182741c8ef`

```dockerfile
```

-	Layers:
	-	`sha256:44a8e7345c0df9e7d5792f0135583f8cc7c0afae6710072a0bb60e1ff45075a4`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 2.8 MB (2757367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e49664787b6355f6a653efa7da022c776831e840702e0ef0fb1d9d2bea0fbc86`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3a418d91f7ccaaeb5261edff1749e7650d6c1f8b8f223034dae1ae34bb393790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190437394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30de23d2979b9eac2cc255c8d57b99c1ab25ee6281d675774815558666a80b52`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:47:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:47:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:47:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:47:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:47:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:47:26 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:50:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:50:46 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:50:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:50:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd1244a3ae8c40ba613f2d1ad1c4595497287e0e37271624575483df456400`  
		Last Modified: Tue, 06 Oct 2026 09:51:42 GMT  
		Size: 133.1 MB (133094694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfec3fd7d28efbb300900b408f1a6577f957fb0834b79d83f48b3caab7b33275`  
		Last Modified: Tue, 06 Oct 2026 09:51:40 GMT  
		Size: 20.7 MB (20735009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2403546c2d9c78a01951383fbe83026cf708003f61d7f1ab9dc70f9e7bcee913`  
		Last Modified: Tue, 06 Oct 2026 09:51:39 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:811de2a01d7ac7e65dbbfd422b728334fbffc78a641f608de52914a0ef9c4d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac0cd6345577ce3a3219ac70ed93f614f01b8c6b4604b579e7f55ee1510aa71`

```dockerfile
```

-	Layers:
	-	`sha256:20f1b1ee01d45ddd6621a601960728ca00a2487a555acf3ff7324da49ca10d54`  
		Last Modified: Tue, 06 Oct 2026 09:51:39 GMT  
		Size: 2.8 MB (2758352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:199828704eacf4f8ec9542cf9dda0646edce02592573cad5045748de412d29c6`  
		Last Modified: Tue, 06 Oct 2026 09:51:38 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
