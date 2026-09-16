## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:fa17d1143d9a5a58813c29212a349dfa89bff46362f86ba84b6a10701b07a50a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:7682d63bdee3ac13816909fcb032dc9fb7e21e49ec81d59da835821f2e800277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219007707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ad498d86fe989246602e437507d57d2d4728282ab7eaad162fcc01c9fca95f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:27 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:33:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:33:33 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:33:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:33:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2fc11abf1434fef71969955b570a2ef9aa0cfebcb11530c15f9d79a35dc4a1`  
		Last Modified: Wed, 16 Sep 2026 04:33:54 GMT  
		Size: 145.9 MB (145861409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e63f06fe2e98590e828fbace653096998d0fca87e87c6e7155d400295b45afd`  
		Last Modified: Wed, 16 Sep 2026 04:33:52 GMT  
		Size: 20.1 MB (20133737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70768464052b8d11112b6bd897e3c02b56b2f216e13d2e061977d7e8eceb1390`  
		Last Modified: Wed, 16 Sep 2026 04:33:51 GMT  
		Size: 4.5 MB (4515167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:28c5a3e551142d3e455814a1799747bdfa1a6429ca47ad54a68fc531361191f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b993f27e5462094cbb8489e9cc8ecc48f61e27a84719bda0612e2dda631f2db4`

```dockerfile
```

-	Layers:
	-	`sha256:3f243aa7fae1b0ab7c227f1969e7b471a9517d606bd5bd9a170046cdfc7cff36`  
		Last Modified: Wed, 16 Sep 2026 04:33:51 GMT  
		Size: 4.3 MB (4308771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc10a2d9bcb848b987ee903362e065d4f4de6f9ca33fe01f5a481b0e4a8b42d2`  
		Last Modified: Wed, 16 Sep 2026 04:33:50 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:11f34876e8d0e66354db4aaeac7b2f63f82f0572c33208dcd6ebef176e709390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215421830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fe97d7d94e03f5fbcab32a214cf8f4440d053ab6f909074489864624169b68`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:45 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:45 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:33:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:33:56 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:33:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:33:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ea4094a20cb39e0fc19b67c951abade4308ec3f899e9dc268f7b7190211eb8`  
		Last Modified: Wed, 16 Sep 2026 04:34:16 GMT  
		Size: 142.6 MB (142566263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b36023ee43670ea00a3532309ba0af8be4c6a81fd30bf9d5756c83056f8dd0`  
		Last Modified: Wed, 16 Sep 2026 04:34:15 GMT  
		Size: 20.0 MB (19956706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68512d9ea9955dc8bd08d176b701f012aca8b34f367252d8aac55f5176f8097`  
		Last Modified: Wed, 16 Sep 2026 04:34:15 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b28739dbcce843b4fa5f3b6e3ab53bcb31d4c6df34e30520d83ccd576d051917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe09710fc2bf710ad8338b20f6050a4b81456b42572ec4d42ee613c76c8b30cb`

```dockerfile
```

-	Layers:
	-	`sha256:7ea3166ef48fb8de595e5a48da2c4d8c2cc67b7a4cee71c877cc12baaa900907`  
		Last Modified: Wed, 16 Sep 2026 04:34:15 GMT  
		Size: 4.3 MB (4309004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae57624538b697259a972541a2e89fd4f34ba2acb7b7b1d0d7b1c7b7b70dfc24`  
		Last Modified: Wed, 16 Sep 2026 04:34:14 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7f66ed31dcd39fe5ba1d688e5235551b3c8fc6e2a2bfaa9052086ead31082a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210295604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc18b47379bf451601d7f35c9580b5ce287d51d1a21906ae095fb78c13f0340`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:19:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:19:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:19:57 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:24:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:24:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:24:13 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:24:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:24:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759fd36f9626e3552cad0f4f99207c8255f1a00ad7e8023566b6aeba0f4285e6`  
		Last Modified: Wed, 16 Sep 2026 10:25:02 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c429ce36b7c9e4acdf3854b2e54b0e4a7875a21611ca4931938bcf25ed8dd`  
		Last Modified: Wed, 16 Sep 2026 10:25:00 GMT  
		Size: 20.3 MB (20348422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dae61b9f8e27f6254659763990898d81efc19864623729b9df03ad4da4ef06`  
		Last Modified: Wed, 16 Sep 2026 10:24:59 GMT  
		Size: 4.5 MB (4515240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ad1739fd6460825c1442fb17d3c89f61a21e06dc2cffd9af8d8f6ae54d113cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a559870243b25df90cd4bcd2342407727b25f690afc7d8b7150c41d85a4148ad`

```dockerfile
```

-	Layers:
	-	`sha256:11e29c07466bba95131dfa5f306aafb02072d1767fdee936851a2efd02bead1a`  
		Last Modified: Wed, 16 Sep 2026 10:24:59 GMT  
		Size: 4.3 MB (4310017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ef0439caeb98b364ddb268f6e53b91772109a21dc6c672be8efef0053cd1c3b`  
		Last Modified: Wed, 16 Sep 2026 10:24:58 GMT  
		Size: 15.8 KB (15791 bytes)  
		MIME: application/vnd.in-toto+json
