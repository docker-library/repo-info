## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:98bc0c2e8a3924e31a4333a9ad462b43562f3cf4176bc85bfbb67809dea202d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a981bd87e66dced72e0e5cb4fd7cac862fe7b22a47edc76587e77d670e9ed64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196966709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848694e1c99c65eb85a7cad40e3e15edbbc7726a438de972daa26c5c30c346c4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 10 Oct 2026 04:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 10 Oct 2026 04:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 10 Oct 2026 04:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Oct 2026 04:47:46 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 10 Oct 2026 04:47:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 10 Oct 2026 04:47:46 GMT
WORKDIR /tmp
# Sat, 10 Oct 2026 04:49:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 10 Oct 2026 04:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 10 Oct 2026 04:49:01 GMT
ENV LEIN_ROOT=1
# Sat, 10 Oct 2026 04:49:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 10 Oct 2026 04:49:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756b083e2128d355b0ad0c0b5dd7f510616c39c55cecec280fc106a3d3234af4`  
		Last Modified: Sat, 10 Oct 2026 04:49:23 GMT  
		Size: 145.9 MB (145864273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a9694db4b017ea6587c3c29542604f034666460b7f9dc233dbf29d5f97b6b`  
		Last Modified: Sat, 10 Oct 2026 04:49:20 GMT  
		Size: 16.7 MB (16743824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1582c787c972a2e3fbc23ddb43bd1fb4e62f77a94da911b3140a4196e65654a2`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b38542036c57924b2f29effe70f1cbfd0d8df5d773e0af1baf7a1b5e7b1304e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8edae2fa8688fffdfdced29bf08e471309e2286329df574e2ea4f13d68726c7`

```dockerfile
```

-	Layers:
	-	`sha256:c7cb71ed6afdac818d80494613b4f84ba3de7dcbc172f8c20ef01b99bc05e124`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 2.4 MB (2392547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bf2380d17f8e2b5700ca9c04bef4d4a4c28a6b2fca8b045c7c9d6e55b1c814`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:18770ba20d297ebcdf5f8ae75d890fe0cc313b25569f3cc3e31c2a9edabfd07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194004218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5746fa8db79b69936cd3b391f0a4ee4a14e0e1f70d2b97e6076a1825b9e78260`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:10:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:27 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:27 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:11:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:11:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:11:45 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:11:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:11:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae1afbd722b78e4fd3648abd8781b0f3d4fdd3dd6c6e071090c518ef1564ca7`  
		Last Modified: Sun, 11 Oct 2026 13:12:07 GMT  
		Size: 142.6 MB (142576557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00937f03a6b0c72dd6cd4c71c100518d815b9538b06c39c422c46525838effe8`  
		Last Modified: Sun, 11 Oct 2026 13:12:04 GMT  
		Size: 16.7 MB (16712135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6420a32e935490590d6e821463230b68f013efe129901f1e1bc373c476cee1`  
		Last Modified: Sun, 11 Oct 2026 13:12:04 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:77c9a985b7fc95b50e205f9348b7e38a36df6c983fa8ee6e2d0ccaacc11cfafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eaacba1ad6bcceb5634d480cf2ca33c2e0d6d4db8d75f8aa77be0f4b03dee8b`

```dockerfile
```

-	Layers:
	-	`sha256:036a2260fe8556837a64b57d1f22fa59fbae6eee56c7b1ba6cb10fe5c25cd8cd`  
		Last Modified: Sun, 11 Oct 2026 13:12:03 GMT  
		Size: 2.4 MB (2392775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c79ce0e85828bf3d45f1b9fe03320c0f7521a17dd6d63e7cb3f5f0bddb12465`  
		Last Modified: Sun, 11 Oct 2026 13:12:03 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3fe609839759a52962e0775435c0bfb2ec83434bbbb01df7f6ba5fbe45aa508c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188043931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba218491388bb5868febf50ad5c169912956f3d5547c695815756ba5baa7f76`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:52:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:52:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:52:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:52:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:52:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:52:13 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:56:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:56:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:56:20 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:56:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:56:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d600f73d0d239be1830c72a0a84ab8a24820da0b5940b7c62a7296bcc885045e`  
		Last Modified: Tue, 06 Oct 2026 09:57:01 GMT  
		Size: 133.1 MB (133094729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:820ca2f32ce276f92e7b18c25511e0dcb094ef02085632029fd4d788694f32a3`  
		Last Modified: Tue, 06 Oct 2026 09:56:58 GMT  
		Size: 16.8 MB (16782346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511120ca5b2ff0070fae975932715d3112cb37c47385743e75626d2a95efe55c`  
		Last Modified: Tue, 06 Oct 2026 09:56:58 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0e4e08b8b9d69096f030a5a68baf9ad5b0fca3332ff6f97f10374915e3218ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b04bf1fc0997b0ef4f29749ceaeda683a79183a7fdca2a69165a22cab2a2ea`

```dockerfile
```

-	Layers:
	-	`sha256:3fcf68fdd7b32d23997f675e8d5ecc74d57aac927b417bfd5cb72e802f09c07d`  
		Last Modified: Tue, 06 Oct 2026 09:56:57 GMT  
		Size: 2.4 MB (2392912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a3cb0e6ec16df7fdaf2aac9fd97f6f6b846da9f6e12756b86f63c85e659bcb9`  
		Last Modified: Tue, 06 Oct 2026 09:56:57 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json
