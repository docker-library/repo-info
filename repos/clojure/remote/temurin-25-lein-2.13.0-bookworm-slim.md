## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:6c20be07a2f4f9dea7d4c3e970ef2677d67833ae3df775cc59d8111aeb29455f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:02bd3b915469ae4c7a7f10a16c9c2ef6a8d42aac69e6a40bd465ecad8c854004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143435665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baa2a122702df5482fd3894e402f4ac046d949a03df3cd223fb45c6c1e32a08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:42:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:08 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:15 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63760a457a53fce65730dbf1209b9c3b9d329cf2cad384f08084b99e8a8bbde`  
		Last Modified: Tue, 10 Nov 2026 00:43:36 GMT  
		Size: 92.6 MB (92598941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789485de9308a6a081ebb609676cb4fee3ed0da0376ea5ee494c9d56064a8719`  
		Last Modified: Tue, 10 Nov 2026 00:43:34 GMT  
		Size: 18.1 MB (18072599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fb6295f1a7febdd04cbfc1827ac768f8117469b76ecee66ce4a3427a8ee0d0`  
		Last Modified: Tue, 10 Nov 2026 00:43:34 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f36cd02975f71e27532967db339ca0f34f45abcb86bd2199acc2c1d720170a`  
		Last Modified: Tue, 10 Nov 2026 00:43:33 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d21fa4eb88db801e00b6ec39c93617eea360f10b85aef7ac8a3e50c4ae0272f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede94760cca09e0e8a52276f1178a9a6253eaab9c52cf00db3446291c6bf8aba`

```dockerfile
```

-	Layers:
	-	`sha256:d709746be0aa95a8c8e91b1118721fed03da30c82b774a6c2f97a82018a8440c`  
		Last Modified: Tue, 10 Nov 2026 00:43:33 GMT  
		Size: 2.7 MB (2704373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b2884447c614ec34c00760f0a612594a4f01a94e94a9a5283291d7e320264f`  
		Last Modified: Tue, 10 Nov 2026 00:43:33 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dfafb3b38bc0893647e591b713bf581d3f3683f281164db37dc02a5d156e2ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142092663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0d2267c8d290b8c1292852b80ecfd7fc76fd287dd2a36e0e0999964adc904f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:41:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:41:31 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:42:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:42:40 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:42:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:42:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b5f320edd80886361d85231864e91d3ed1b6b2c290470b639c78156094cd74`  
		Last Modified: Tue, 10 Nov 2026 00:43:01 GMT  
		Size: 91.5 MB (91525571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ee23698aa04bb7c91ffe0604463c9bc93a94f1b05bdac6457611e706739f4f`  
		Last Modified: Tue, 10 Nov 2026 00:42:59 GMT  
		Size: 17.9 MB (17906598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52d2a52fa637fac1c1e4d8c38263977e850b3fae4987ce25fc5845c2d8aef7a`  
		Last Modified: Tue, 10 Nov 2026 00:42:58 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3498d47d8a21313ca6480d6eb03787a6618e8bfce5b5fe30083c7331289eff35`  
		Last Modified: Tue, 10 Nov 2026 00:42:58 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2d1628275d82eba84aaa1ae799edd690f211ab86b871b92500a5c29b4ef0866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b268831cc81f458e9be0b12f5ed3ccada98c2b8d895752916f3f7eb4891396a`

```dockerfile
```

-	Layers:
	-	`sha256:04a0e6cb2ac6d87310236237e6108e0021cfad4b6ea99b877c0e4c5283e5a542`  
		Last Modified: Tue, 10 Nov 2026 00:42:58 GMT  
		Size: 2.7 MB (2704009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66ce02c73ad08d4a473b2c35422a2031987b4903db1f85f5f0862e3a0255c49f`  
		Last Modified: Tue, 10 Nov 2026 00:42:58 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8b5af1dcf4a6d8b04c3d1a90379393111bf24cf91ab25a5b460798b3f6122da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145000644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c748b8edf8de32aca18bd0d7f53c0e73194855fb79bf251a0b65c3a0f8c1dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:06:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:06:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:06:40 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:06:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:44:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:44:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:44:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7423e28b2edfde04eb57e0498e4c68058d1a69def6eb501163f19ca01605771b`  
		Last Modified: Thu, 05 Nov 2026 16:07:18 GMT  
		Size: 18.3 MB (18279202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d88c9de5d98c06a11ca4c4cbfdee77cc77a970389e2f682f3f24a718d3583e5`  
		Last Modified: Thu, 05 Nov 2026 16:07:17 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234dfc11322ac11e13aed827212c03f643855d4a188df00f62b79bd70eed1739`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4f361679b9cdf2a206ab209be2a252772e117ea2c71ca16d16cffbe290ec10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede029f732304fdd2f5f0a815049c5f3216b805682657a7af7a2c60d92034f57`

```dockerfile
```

-	Layers:
	-	`sha256:c52152c72d8e1c40644781df595847190c76d0b1ea8a385c4421a5f68321814f`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 2.7 MB (2687669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68d98af880ba11b272cbe90c5b3fc871e3eb1cb60590f193a3208d33fa502492`  
		Last Modified: Tue, 10 Nov 2026 02:44:49 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json
