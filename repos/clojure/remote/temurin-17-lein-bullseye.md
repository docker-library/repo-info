## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:051810b40aedca56de90eb2d7d28ad34f8d545224a56a9f1fdb7d5d0a80a6f0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4b95ad0897754a1b1ffcd290483a56376db601fee0a55e7b035f2a95f4971d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221128182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f3e971ad7aac1a967ad84b81b070b0e9094a4f0b8d5763c869b885ac5fb8c2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:31:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:32:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:32:52 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:32:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:32:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a64ad5682087ff7a87845ffd946cb7481a3c668ae5cc72ae3356588114426b7`  
		Last Modified: Thu, 16 Jul 2026 01:33:15 GMT  
		Size: 145.9 MB (145906354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2920823e97b5420de05b6bbb608c31fb8f5c85de953a1af05bb2a67d932535c3`  
		Last Modified: Thu, 16 Jul 2026 01:33:12 GMT  
		Size: 16.9 MB (16929603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef5fa38e8bbd9b9ac6e44d4cbb588e8ec6688b09aec17451b6e0fabe3a4c8b4`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75742d161d107825480252255d34c62d192f3882f1571bcea115b070ee8e30c5`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c074778305d9e346b53d9fceaca12c5d33d2daa38becf0232af2a580d8156c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90289003f0edc9ae68a618a2253e61865d7838943352a9d7a66e47d7f1fffcc4`

```dockerfile
```

-	Layers:
	-	`sha256:2053a49b834d1410a63289969370c9a1bb3d730199c1e22ed49b5e3b5f4db0bd`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 4.5 MB (4501027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3192dc4bd3a4d63fda52bb27cc7e19f6ef2e50fd63f9364e38d82e4d265b4f9b`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:49cfda76f05d9f8f4e06e139dacecfb33025a94df1fb55a4cd561cfe34db79ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218428789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494ef66c224365c55fcc47d847633049fd3eefd72df4919ae5a08b1fabb98043`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:24:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:24:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:24:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:25:39 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:25:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:25:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:25:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:25:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cc1bb1c4907785b39f87818a2acb564e321b6356140ccc7bbf161295903b20`  
		Last Modified: Thu, 16 Jul 2026 01:26:01 GMT  
		Size: 144.7 MB (144724316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b15e7debc3181146d940bd9a3ebcb642e05c0ff9acf9e8368f9ac39b4e144`  
		Last Modified: Thu, 16 Jul 2026 01:25:58 GMT  
		Size: 16.9 MB (16927962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648f76e4dee5447ad88b793a4173c155e96be31522cabbb73362ae6edfac6893`  
		Last Modified: Thu, 16 Jul 2026 01:25:57 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9e5e0dbe823fc580e97b8486fbac9c67b26481ba8d7939c2d6cd4d08f6a459`  
		Last Modified: Thu, 16 Jul 2026 01:25:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a102d1e8a47cbbd26110aa563e6072c9146a2834cb96b473404f789dcc65f57b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5731e18a3b925bf2d2b2c72298c32ff7a096d5205cd48883392b46bfd30d70f2`

```dockerfile
```

-	Layers:
	-	`sha256:5b90d23654098dce051c46fd86f0af421e8a15279c38ce308cf3eb96a3776c94`  
		Last Modified: Thu, 16 Jul 2026 01:25:57 GMT  
		Size: 4.5 MB (4500001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08e154f5d4ff837c2d2d9aa5fa86f238d359d33a83185c0cbaa05540a1c6595a`  
		Last Modified: Thu, 16 Jul 2026 01:25:57 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
