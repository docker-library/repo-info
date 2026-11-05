## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:42143583e7e97a26e08aead1d111d95137d2c6d888c5870deb038a7a1bf71c81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2e40622752723083129aeaea426a53721fa7ba5360629f18be3974e875b092f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218899334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24c9bb194371934c8bae64bb63361f16eee38ee26892e95f448f449f9f25b8d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:08:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:08:16 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:09:26 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:09:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:09:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b3d8482d8ab63388da13952d409c6e5b89d53dfc7dc20a6b71b863270f73b5`  
		Last Modified: Thu, 05 Nov 2026 08:09:46 GMT  
		Size: 146.1 MB (146086188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1d43abfb16d952cc84ba5f27b4dfd8454d9a01a734ebf5d0d9db2aa1fbaa00`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 18.9 MB (18885002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae067fe377c1a4da318788a445a11210fa4cbe36d41a2885cbd19779213ce189`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49e255a6c70ae5583ba90fe997a6d7f81de21e1abc3963b82b17a3a78242802`  
		Last Modified: Thu, 05 Nov 2026 08:09:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9b6e7f69e69fb66646c24ad1f74027dea0c444d56961e5847d6eff43a6cd6860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0458cf27281f2be8aa5acdcdb5a3104558b6983f0558a5f0ff0ca8a2c9e937`

```dockerfile
```

-	Layers:
	-	`sha256:cdd792f1427a08edfc7067182985f6508cd92162faec10fa7fa5652703430f11`  
		Last Modified: Thu, 05 Nov 2026 08:09:43 GMT  
		Size: 3.8 MB (3826462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721e6a9ea6cb26fb05d2f201a427d34f59e0c27a24f5a7b331680cdd057bc4c3`  
		Last Modified: Thu, 05 Nov 2026 08:09:43 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0dece237e0c2f1d36aa69dc0783d22ceed346d866d16cd0fc2ac76456a1da7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218094473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70fe2563bdf3aeeb5de64a6072150ff407caa6771a06f3da00569b262cd56c41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:17:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:17:32 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:18:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:18:47 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:18:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:18:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77496db53e365bd28eec29b3f1b94f07c2f6055b67549ed584673b83f77129d8`  
		Last Modified: Thu, 05 Nov 2026 08:19:10 GMT  
		Size: 145.0 MB (144957202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4e4fd72a42ab2cb392e8fb2dbb95b54709ad8dafc60dbccde05e6cc8eed0c`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 18.8 MB (18843022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f0565afffc99f39ce399dcd1df24a952e6f39098d080899ae3d647c18dc26b`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808ce2bcfd5ee016def3a6eee4e06177b5dc741b370e32fdbb98d87bf9a2c66`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:82e143dc4d432bfe88d9692a1bdf079efb6ac4ec0bde2e7a29ca21a98bbe7e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f2dad59a0c81b41609c6db31be9c2dfc7dd4d33aa443a499521344f5980b6e`

```dockerfile
```

-	Layers:
	-	`sha256:997c6076e0d7d56a94822c438f5d77476ecafff8f9e8be2b32ab01b456f2946d`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 3.8 MB (3826702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df24d0408487174d88461abb602edb42a501055dfe42da6ea529d8f6164a36fc`  
		Last Modified: Thu, 05 Nov 2026 08:19:06 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d92ade6870f5910d55de0da7d72828ae2bb0439a87bd75911f23559ec7212170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221540900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba34055a66018bf81026ef363930ee71a3f86acabb7ccb94e0620d6d8400c15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:45:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:45:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:45:26 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:31:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:31:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:31:24 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:31:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 16:31:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:31:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:31:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee03120020298d10b2a58fd447fa0b14563aea18a134ae0bb4b68b9840afc7f`  
		Last Modified: Thu, 05 Nov 2026 15:47:23 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88c193e17414aa7724e43cc43c3af06f224705dd486260f3b0282b6da0d4d78`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 18.9 MB (18939203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affbcf32807e51f42d4b003fe1513b1283c3145c2eb5bec3becc292238c6bb40`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814faed0faa8cac51980ab8bfa22a9ee12f3997323d08901c4408435e700cd90`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4ba34fe655765f29c4cd771671c3384d0a48bf3dbececdd3fb133cfbbabf3448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6be1098ff9826ab983480b119b21cb0f25fc82440a8f3c669c935122c9ee01`

```dockerfile
```

-	Layers:
	-	`sha256:6e9499f6dbe9ce4716d023a37fbe9650878af6f7f6b6ef9bcc9cded5fe489ad8`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 3.8 MB (3826214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea385341b51f3bd40a6940b5655105d22fbea1c0879d69ab15e54f376239a03`  
		Last Modified: Thu, 05 Nov 2026 16:31:51 GMT  
		Size: 16.8 KB (16806 bytes)  
		MIME: application/vnd.in-toto+json
