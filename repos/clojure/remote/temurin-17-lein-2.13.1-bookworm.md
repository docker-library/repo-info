## `clojure:temurin-17-lein-2.13.1-bookworm`

```console
$ docker pull clojure@sha256:3d0be80e66693415ee2a3b6b756b8d04b874420c3d41ee2a416100795ec4f032
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.1-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:39fd105140c1e7e91705a848215670274136793f631bac84747073f5c9161489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219289018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5265cf149e9f88a906c796b9cd88fff12aff49916e1d790cd279c7202c69a15a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:57 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:09:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:09:57 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:11:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:11:09 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:11:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:11:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24666438ec453160a01deaf2356d36a83af6fc41fabe05f0ca98c4ed11c38d17`  
		Last Modified: Tue, 24 Nov 2026 05:11:30 GMT  
		Size: 146.1 MB (146114251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572202361992f789fa57fdec428dd340c27975f9af635c187a494da616b5188f`  
		Last Modified: Tue, 24 Nov 2026 05:11:28 GMT  
		Size: 20.1 MB (20132243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2746ed1264bd878558a6b3f3f30f656e89f83f691dcaf0451cc728550a9be1ee`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ad7cd911d6bec1e4fa4324f2e635747b7ce19f34999104164673bd80a89630`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a5a16fdef20efb08febe25097142e58af4313a09cde112d8d0e5462b7ffe047c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd518d89f493141109c9c68c7e42137d17b94790d3614e072f52ba7cb3d74177`

```dockerfile
```

-	Layers:
	-	`sha256:a48dda8191e35893b175741109492e49a6b3f1a30baf160390e1f495fd6f1538`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18f1dcacab8364e4f57e66262899d2009265a5fabc1ec11e1770023872383e16`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 18.3 KB (18334 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.1-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:20a1ebedbb3c5151819c2189b35681318660695b51422442cd5ef742f574a717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222133597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a1c80c2733b048910032d0aad1c0a946d96c6bd49cab1325c570a01b2de281`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:04 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:10:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:09:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:09:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:09:39 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:09:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:09:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:09:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:09:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadbe36c2b57a52313abab30daddc19e147c06473af05412120df0f4df64ffbc`  
		Last Modified: Fri, 20 Nov 2026 19:14:13 GMT  
		Size: 144.9 MB (144892682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e315d1e32d70d9f580ce7a64d86487691830eda548d9342abde65a18190d138a`  
		Last Modified: Tue, 24 Nov 2026 00:10:08 GMT  
		Size: 20.4 MB (20356168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1423b022e8e3391a61fe082d659cddcec33c6256a7dd2460cfb4bb6a5a5598f6`  
		Last Modified: Tue, 24 Nov 2026 00:10:07 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfabe4ebf36efe4e58811e6401dffa267bef962cb91aac3e53dfff9e04197351`  
		Last Modified: Tue, 24 Nov 2026 00:10:07 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:62957009707c1d4cb9ddba692487239e2cf61ee13e45c00a55adf4e47a5c3562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef24d8fbb48a11d4c645f97f8eb52336243424f783fe987b0821d6172632a91b`

```dockerfile
```

-	Layers:
	-	`sha256:69fce557ef5fb1dbcd18d202039633d0c31659822382610cce6534daa569341b`  
		Last Modified: Tue, 24 Nov 2026 00:10:07 GMT  
		Size: 4.3 MB (4288619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e72118585d9af5588cbd2cfe68b6fdc4d903d19fa2bff8e8f4bed707de4cd02`  
		Last Modified: Tue, 24 Nov 2026 00:10:07 GMT  
		Size: 18.4 KB (18378 bytes)  
		MIME: application/vnd.in-toto+json
