## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:f93913f5dcd176dffd8a04dd16506e27d17269272eec9181474b0a019f444f10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:18efca0b723654a4b4c09fa3eb58ecb060746816297c824e242628cdc6cebc0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230909781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454c889fa852e9ddfef9392c37a6f1738918a1b1269407b1c215be0ea6c0692f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:22:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:22:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:22:49 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:07 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d504dce7beec8342695751c171bfd16d1d7a9bc3e97242e5477db072e76f432`  
		Last Modified: Fri, 25 Sep 2026 23:24:31 GMT  
		Size: 158.1 MB (158117497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5051248b9ed5b0f1870c571ebe914c93ccf9c120f8e35a6cc75500b321c27e4e`  
		Last Modified: Fri, 25 Sep 2026 23:24:28 GMT  
		Size: 18.9 MB (18896948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61665602fea657c589dfdb60dba7590117cbef36851dfb6df879f9e8d460c825`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e04685e3da46beeb7653853cc28b13cd83869806b26d01495879a29958d2540`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7870e88d9d5c0e1ad3601debafdbc49037a354d5f6d772fd40edc86ec3cb35bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e14f986624a88aa5ed0eec43a6f832cebf23e063b918bb396ecdf7f9bc436`

```dockerfile
```

-	Layers:
	-	`sha256:3b7f01e6cc12206c47591defa9c02af395378e3c1b056ac4fba882458d6c9a7d`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 3.8 MB (3829599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a360e64e9a56dfcd67c43af47f9330ae3a6c5de947d82c006716cb4957814dc1`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e616066959e23586a31ce8fbe6dc81ff568c68d587bd63a1b6f640b51f7187e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eafb48e2357840792847b9cd6dfe2be23aeaf618d9e64bbaf9c589abe6fc681`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:20:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:29 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:29 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:21:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:21:46 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:21:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:21:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99414009478a5c87c2d2a4c808bcf4df5d84140e47b210195cec130b877dc9e`  
		Last Modified: Fri, 25 Sep 2026 23:22:10 GMT  
		Size: 156.4 MB (156400663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb62a7c1fa8cbfc72e7536430df44fcb9ac1adf139821d88de8770b5d6458f04`  
		Last Modified: Fri, 25 Sep 2026 23:22:07 GMT  
		Size: 18.8 MB (18844695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733ebac33e64a2f58d4dacaa225fbd7d513caaafbac5a32af5341c88b031ab00`  
		Last Modified: Fri, 25 Sep 2026 23:22:07 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2be684703e3b84eae7063a304e78f257fd5430b55b602ea4bac7f940e835f2`  
		Last Modified: Fri, 25 Sep 2026 23:22:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c896d34c0f0cd4ff785819bc6bc080d255eb1e224af2dd71fd8afa529d0ec36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890d17651fefbc9f29f5d0414a2461cd625aac8c3502b6344259693039131246`

```dockerfile
```

-	Layers:
	-	`sha256:267f3b399066d90872363209b14a19658eb94a4d3bea3ab0b0029f529e203cad`  
		Last Modified: Fri, 25 Sep 2026 23:22:07 GMT  
		Size: 3.8 MB (3829839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aca6d1a103b31396e1d8f1f28ce95938bf8218d8ce5e4190e18b7faa54d67f9e`  
		Last Modified: Fri, 25 Sep 2026 23:22:06 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c35e33611ae2ed17ee506fe5b9b3401e4e9590a78a92e7c89b242b65c889a59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234927208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f00dfac805f330a1f855e388759d280541f18c119ab5aea18780ab72c0245`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:22 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:06:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:06:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:09:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:09:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:09:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:09:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:09:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6eb4a3d87f0293c946026fcba3cec01f100ef9faf9910f5717bc56e7b5117b`  
		Last Modified: Sat, 19 Sep 2026 08:10:43 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f4d761f4cb42593911f37158b6645a8fd28adf854dbe3c3b698820d1a8f101`  
		Last Modified: Sat, 19 Sep 2026 08:10:40 GMT  
		Size: 18.9 MB (18941565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb72413c2e39eadb6425f8e6842c069555d4c5dabbac7fa69f1ee2e8fac3f3`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad0c5791747c541fc85ebd9fcf56ea71e87b07f67b63dcd161a70c2be91941c`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:811edb2619efc22f0d8e5d726bc28ae4ee735a45c78e05c87a5a02316f8cb19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feba0c80a2d3c5312287e24625961e8e3b4c5e4d620273277baebbb6c68ce46a`

```dockerfile
```

-	Layers:
	-	`sha256:e48b3983d3ae8b55b3b0bc766d6fe759d6490182b53ac238fb4534418b4b6372`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 3.8 MB (3830589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39d2fb8eb36a8574a2b95801e3e93f3752fd778ff61e4eaf3ec2f16b5980b8bb`  
		Last Modified: Sat, 19 Sep 2026 08:10:39 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
