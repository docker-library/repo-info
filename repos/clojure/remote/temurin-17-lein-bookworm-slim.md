## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:0fe96d240748725811b2156314557143d7593ee3476e9e5b0fa7450a5ba1a870
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:03c26a393e85d7771a1e9dfa84d90b71babb63485919821bb1bb8c6718a241fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (198966811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6649dba8e0d1016f1d6163df77350c8acf858cfc8eb72e3e14eb930ac8faa5bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:12:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:12:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:12:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:13:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:13:23 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:13:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:13:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf4152402a91b113637d2aa1a8533870568bf34a65c3740fde0aa6264efbe1`  
		Last Modified: Tue, 06 Oct 2026 02:13:44 GMT  
		Size: 145.8 MB (145825478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ef4570674cd37422d6f9e57fb8f2b5bb8f8f896b478d51721fc94aa3898b62`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 20.4 MB (20376396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367e9302a2b0a783b4504a5bb1d467920fd43d77164c04d7bee72d957034a142`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267aba6bbdce183ee0bdbc0191ead4a265d91d2ae766b696ea1b601a9306088e`  
		Last Modified: Tue, 06 Oct 2026 02:13:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc3001b28dbe087b618991ff6da62a8afc831a2d4392f1dceccdac18235b5a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad3319679b7a787a177675d8456f48f9217ed564f96502d9304d39205853910`

```dockerfile
```

-	Layers:
	-	`sha256:e2a71d48fa8a5d872e23a448c056a23470081fd41ed53794e7e5c7930114f5ad`  
		Last Modified: Tue, 06 Oct 2026 02:13:41 GMT  
		Size: 2.7 MB (2737618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc81d4bcbfd5fbfa558a2c0da9a31b5b674556c45336a20bfad971580929dd6`  
		Last Modified: Tue, 06 Oct 2026 02:13:40 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f67ef86f0d3180b8eeec42caced790cbe49a4202671cf60f5efc7eb97a419992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195195577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4191cde2a1839c520606d06c385d5cbd24a08c3060efb9ed86e35ddc7eab2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:01 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:01 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:11 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58bdf18a11a29da684c904a0498532e74a92226ae3ea416ebb43a4a63240e1e4`  
		Last Modified: Fri, 02 Oct 2026 02:46:33 GMT  
		Size: 144.6 MB (144648280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddd2b6a5f8bbc9b300e5481a2be06137887c1fcf813e62a0f246455a419130d`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 17.9 MB (17907967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e62ae5a4a6c0f76a34758e303d97419003a02464afdd03ac044c0aafdeff881`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f903747306410cc0053da446d925a9dd856326a2e963b37ee531b7733e2c711`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2c6f631fc8a92908945b6896d77efc94d0abdadac5b73ddb8ce2614156e7ae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0267dfec43c2dd8c1a30c0826cda640810b2e6c60c9ccb6f7edca098f77afd8`

```dockerfile
```

-	Layers:
	-	`sha256:df499337cfd3073fe9c50842295e2d88a9e27df731e682939e61745ed5835ef5`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 2.7 MB (2737233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc08c3f0ee5cca385a734532eb6afeab5dd6ba477405dffc4eded019d780b1e4`  
		Last Modified: Fri, 02 Oct 2026 02:46:29 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6cc86b089a917cf4370b8b22680ee778e9e602ff1064b385995df651d2fd6746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200551703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3611361b2fb13841f3cf8c9e93bfc76d9c509165acd544b363495c59104e190d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:56:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:56:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 07:56:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 07:56:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:59:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 07:59:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 07:59:52 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 07:59:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 07:59:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 07:59:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 07:59:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe6b4f9947e159345c2a5cc07a4b2be3095c06f0324d673a007216e919ba83a`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 145.7 MB (145671507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b81ae636ff07bf6708c38311d01cf569ce891f71a7e129d3cfc7302cbcb0359`  
		Last Modified: Fri, 02 Oct 2026 08:00:39 GMT  
		Size: 18.3 MB (18280998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e12dc04151c68a12ebbebf64aac7c7418888a66187cd6d48b866bf29ff369c`  
		Last Modified: Fri, 02 Oct 2026 08:00:39 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afdf79d2beb91fe2fbb15edb49f22903a34f124b9a1b321964bebe4d8e0738e`  
		Last Modified: Fri, 02 Oct 2026 08:00:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a963d33e8192f2783efdd78197589d88bb715aa81a4c6ec712cf9c60a153d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944eff80859cfb16306145fe328fd9314719e7c4e8992013572328e76c1f84f4`

```dockerfile
```

-	Layers:
	-	`sha256:a7014c84c026a453d224475927d6f78205be279cb9d3710d8dde412b3dddce0a`  
		Last Modified: Fri, 02 Oct 2026 08:00:39 GMT  
		Size: 2.7 MB (2739451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca8cc8a0d7dce3928d49c58e2efe69481a964cdbd4092f0345770830b5e38a6`  
		Last Modified: Fri, 02 Oct 2026 08:00:39 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
