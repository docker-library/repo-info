## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:b21bc743263a6bd8bd04c07baf6f62c09a86339de0a77cf424bed42d4fa3c1ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:39da4e24d37e4b7c486950b768c90700e4dc2b19a3208f3b4564a21e62f0b176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196928178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6a04142fdeedda89f8261c40420730cacdd427111a640bded0bb1528faaf26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:48 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a14891ea1b86e85f80d925642cdfdd5bbec89348c954675cd13545eb17dd46`  
		Last Modified: Sat, 17 Oct 2026 01:50:27 GMT  
		Size: 145.8 MB (145825508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6017eebedab8bf4adf9c7958ec88ddde1dc1767a8dea046217d43bfde1d83c4c`  
		Last Modified: Sat, 17 Oct 2026 01:50:24 GMT  
		Size: 16.7 MB (16743674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83a382bc41130f776f234b7ad6c145b0788160101efd9b349d510f321a206c3`  
		Last Modified: Sat, 17 Oct 2026 01:50:23 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faaa44efdf9fc83a02fdff60c7b174f0c6dad288922f75b5f81bdde62286cec6`  
		Last Modified: Sat, 17 Oct 2026 01:50:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:28d2d90fbb5f90256afe517ff2611038201ea6871245f4dc3f75f996f6110fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddeb8830dffd68776355bef9a9d3ea3b21a070ca1e75ab58cdf18ece13c26388`

```dockerfile
```

-	Layers:
	-	`sha256:ffa8b3a16151eea6a4484731862653d1bca24347a5f8fb10a3ff54823a50360f`  
		Last Modified: Sat, 17 Oct 2026 01:50:23 GMT  
		Size: 2.4 MB (2373031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76c58d28458a4634d5531eed97938c5c2632dc74001ec75937d7f86e8a9c767c`  
		Last Modified: Sat, 17 Oct 2026 01:50:23 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc570a865f0245bb933a1c02054681ed4c91c2e807c8d8e8b33ec626766c1f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196076217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4763731a087c625fd7d39243d227ac763f5e539aa5a76e202be9b83a380ef1a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:00 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:49:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:49:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:25 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e40c5f0d082a46600c68cade4ab5da2deaa1274f8bd137fb04d226c47886743`  
		Last Modified: Sat, 17 Oct 2026 01:50:49 GMT  
		Size: 144.6 MB (144648240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9395026f9a41ce8c865787a9ef5b9dcde9b7f0041e5e479217a87bfaf2c3909e`  
		Last Modified: Sat, 17 Oct 2026 01:50:47 GMT  
		Size: 16.7 MB (16712058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d3139cb3cfd12ded95fc2d2a0c4f6f027cecde389e38ca62fe4d6078af75fd`  
		Last Modified: Sat, 17 Oct 2026 01:50:46 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f895895d782dfeaf27c92c2b29f75a357c4561ac163c870c87bde73b2e366c`  
		Last Modified: Sat, 17 Oct 2026 01:50:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0cb0173105f1f0db62049340d59e0a5bdc92411fac59b6d3a32f56e88fd15109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d4682e09049add3225bcae180ca237b9c0caa6a94680082d6bba2ed4ecc6fc`

```dockerfile
```

-	Layers:
	-	`sha256:60db5da5f21827e0dd56445d6b8e5402c7c778e0d0a7cb22e673a0b7330249fb`  
		Last Modified: Sat, 17 Oct 2026 01:50:46 GMT  
		Size: 2.4 MB (2372641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d2e230f8501bcd7c96775949e4470cba37548fc0a9f80e1a9cd5a91a3abb9c`  
		Last Modified: Sat, 17 Oct 2026 01:50:46 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:47094e83451be7f88d06678180e1080130cfc77806b14e58fc071dd8b142fd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200622067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfb7044ccd09c6dc7aa3a66e3b396ef78fee86117980327bc3ba441cafd48a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:06:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:06:35 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:11:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:11:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:11:01 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:11:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:11:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:11:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20d3a530543616739863ab002993c8390b6080b2300d6388c6232bfa2803db7`  
		Last Modified: Tue, 06 Oct 2026 10:12:01 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7c527e9a97faa9f0c5b07c48e21f4a9341bec10c25894650d0b9d86e721a61`  
		Last Modified: Tue, 06 Oct 2026 10:11:58 GMT  
		Size: 16.8 MB (16783241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759c291e2d126ec637754a04b8153615dde449c460e046cd417831a62b5b6ba`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132d5a75a4874df54874c80acadfe3e732acd9e2f4cb2edd54f4b2939595084e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e92b900670b56780b9862791601c78b597a652555c0201497fcd8d3ad9591dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:875a82c4363d0832f505f5fc14f650eabffb49684402136f4aaa58f0f68bc3cf`

```dockerfile
```

-	Layers:
	-	`sha256:41ed9f312053b245637bcb6e535e963a3729261c94724aee65d42ad0ecf4b915`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36ca428626eee07d856d8653d715341664dbd676476e4c2ff78602d082db511e`  
		Last Modified: Tue, 06 Oct 2026 10:11:57 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
