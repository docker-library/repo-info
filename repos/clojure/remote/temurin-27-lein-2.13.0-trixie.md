## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:41db3638f970f2ee7b675af1717d16904f93237a27465f2388cd68f89bc62786
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:122f66526ba337aa0278896d7b2a5abd6d45cc158af7b3b75ca0532c8110ba1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166417047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8ace437d6438bd454fb88d0485d01452aa3c50cc660a6e8e779c225bf64e25`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:04 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:14 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a70546c27544f2285343559765359863fe856f00e2189bd8e719696b243eb4`  
		Last Modified: Wed, 21 Oct 2026 01:23:35 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c493e1f060b798fba62ef30f0fbd6ca79d8e8048271593d76fea7f3617d1bdb8`  
		Last Modified: Wed, 21 Oct 2026 01:23:33 GMT  
		Size: 18.9 MB (18885240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26dde367de1b5441c355c2cad2535bd9107492af3c95f48a11e6b9d6d5bf661a`  
		Last Modified: Wed, 21 Oct 2026 01:23:33 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f934a4938125e687427c2a9abcb3970ecb177f0027c84b60738f089521264633`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f027de4c277a6bf103a8c0155f94e0d8f2ccca6a8a425b5db72259d7d4c56ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928b4716b1da4a968aac272967735b2c559fb0cd6683d14ae30294bccb15aa47`

```dockerfile
```

-	Layers:
	-	`sha256:37061d4f4b6e681750d976ca97077b6233c6607e33952c10104b2540c88ff28c`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85bcdf974d8115ada630d0758441f815db6d3db2c2d4e98ca62c7d92507ea6db`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75e4b9feb7fc3055d426ef6107d223ae02d373a9527cb0e8905695bbd3ad3a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165754313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb589b27f81e3043ef59bb01c1ccd35d31994a70aa49bd7f240bf484627e83a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:28 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:29:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:29:45 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:29:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279a5ad7f14cf68448e6ed91eaae07713ca33b667930817e530cdb91ddd16633`  
		Last Modified: Wed, 21 Oct 2026 01:30:07 GMT  
		Size: 92.6 MB (92633126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1386f9699b4e1dcf32057dab7b4a0a394a30e7643c1359adc9b7e30cdf97141`  
		Last Modified: Wed, 21 Oct 2026 01:30:05 GMT  
		Size: 18.8 MB (18843936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a0bc9ec94f8f51ec5d1f290320bd71e0093f34776961ebcc9d5cd65b9a240a`  
		Last Modified: Wed, 21 Oct 2026 01:30:05 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b5ab254d9b9c91121e569e439c782e305f1031db72153f80761d32d14d4358`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:32c10f02f9a79727eaa856079e569ace512f50db663264b49ae5f6cf0abc9d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3de870bae3123f500bcca234b74d974296ac7058df4413154f3784a656379b7`

```dockerfile
```

-	Layers:
	-	`sha256:8fd342a8737ce9fd21a979250d9fb629880c2a115e6d9b12719e03dd38eed5ca`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5d3606576fcefeedc3d146c0a561290075ed1938cb18cdf96fbb9d53100b277`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:379f95ec2bce8978216717cb1dc61c64a09d3af1655236b49c76e7d87e8f4d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168920532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6b9831756b127b64658535c5afa222f7c546fe370b13dffaa8320c61353edb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:08 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aad93cae1fded95e82282b1af6b3e6b09ec126c505ea7a219cf24bba68940e1`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 18.9 MB (18941959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd903c7b4f5e02c80fa48ec6b8973d08b2a3ccc31726acc08d9f34014ced25e`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569e2917ad38a727450d9a3f8faea941e3b6083efd503a27f50709ea20858aed`  
		Last Modified: Mon, 12 Oct 2026 18:30:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6a51302d5b9465ac406684e2017f43f083b3c7023e013f65818518fe16748768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178877219a92490251a9a79934535b8037eb7b5ef1b2f2d8019e23154399ddd1`

```dockerfile
```

-	Layers:
	-	`sha256:96737d2a1f155e123d353c3f4d74b1947f7c585273803db9114ecee10d9cd7f0`  
		Last Modified: Sat, 17 Oct 2026 06:54:07 GMT  
		Size: 3.8 MB (3776305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f0b5913395e78c0edaf50f697142697bac83d828018d7762d0f721d7402e1ac`  
		Last Modified: Sat, 17 Oct 2026 06:54:07 GMT  
		Size: 17.8 KB (17754 bytes)  
		MIME: application/vnd.in-toto+json
