## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:2be45e8f582d663b28927b934dd4c3457194f3a48736a641af1088db5ca78997
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10c628e91dd13b52be83d33d62ff376b065a6fdd790440b224c70b38a8d99d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143450431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2e6a32ba830ef6a3c03b410cb55bbaefb73db15a1fcab00788c0e72504cd1a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:12:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:15 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:12:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:12:15 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:13:26 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:13:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:13:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a299b87900914c4ca477608f5abc5595eed6213cca660d718c57441484c4f4db`  
		Last Modified: Tue, 24 Nov 2026 05:13:45 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cac13ca80a798a9b0924e3339a811c87f89c49b09cae199c5d882a034061484`  
		Last Modified: Tue, 24 Nov 2026 05:13:43 GMT  
		Size: 18.1 MB (18072412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ee9befd94f2b031f047a661c97b87ace4b86614a9d3b51667bf6bd1c9215b9`  
		Last Modified: Tue, 24 Nov 2026 05:13:43 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b40d3b9d7a8313acccd3aec3424f100e07516742b07cbdda092771114a95b98`  
		Last Modified: Tue, 24 Nov 2026 05:13:42 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:314666755d783c82a6a67069b36ab5c6b2ac0425069cb6edc7932d6552006333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4124cc11335f7b68615e3aa07ea9cd1f8bab9265d5fb00df55e34232d499ffb6`

```dockerfile
```

-	Layers:
	-	`sha256:c325fd7cd8f67b6c47790eb160422df75a4457f33c9110a6cb60a33e47a2c4da`  
		Last Modified: Tue, 24 Nov 2026 05:13:42 GMT  
		Size: 2.7 MB (2704381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4afbcff7c38a72240a001f4e51719eaa6f8cf7aba49a1192d2f7124a13810e87`  
		Last Modified: Tue, 24 Nov 2026 05:13:42 GMT  
		Size: 19.0 KB (19024 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d19008a99095b73a77a5e5f2e91f93252a68b05d637e39e71315831836ce3017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142130209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e6e1b494f004d06c12c1f140013dbbfdbfb583a38153bfa3c28ab395436439`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:18:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:15 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:18:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:18:15 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:19:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:19:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:19:25 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:19:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:19:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:19:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:19:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6031cbc292d78cff5b4da61fdbecef3615f9ac9839a3edb5186042e09142d3da`  
		Last Modified: Tue, 24 Nov 2026 05:19:46 GMT  
		Size: 91.6 MB (91554011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc37a0ddce18f0d49c41e5a521ae0f57528e21b071ae17d9a38cdabc2d3e5c91`  
		Last Modified: Tue, 24 Nov 2026 05:19:44 GMT  
		Size: 17.9 MB (17915734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d68c47354e380cae116be564485e4bf32b074457359fb06133864befdb984e`  
		Last Modified: Tue, 24 Nov 2026 05:19:43 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692307e2d3fd4281335d183c28b5389542151f39e3215b8a5fff0ffa8b5782eb`  
		Last Modified: Tue, 24 Nov 2026 05:19:43 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9232d1ad38948f889570b10a9bc999cf66805336c2f3a7451e71f3b03bfed863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0043e94276e960586eee2854d7b4427ebd9ea332c13e8e2ddf11b35fd7f8366`

```dockerfile
```

-	Layers:
	-	`sha256:717d2fb04da037caf823696f0cb4f9241b2b70deb7d59c723eb1a8591fee15ff`  
		Last Modified: Tue, 24 Nov 2026 05:19:43 GMT  
		Size: 2.7 MB (2704017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d2352e98fc3c75153582ef3f5703c5a0623ec855589183d41c4997e0fd65442`  
		Last Modified: Tue, 24 Nov 2026 05:19:43 GMT  
		Size: 19.2 KB (19169 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b8aa79e870382298e10e563506fbd0f1ccece11276c592f73b1bb4bfbe6eee2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145008705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60846880f2e32f6976c501a01df7042b76a3b99f025ba49f5eb8a297ee2586f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:46:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:46:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:46:52 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:46:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:46:52 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:30:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:30:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:30:30 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:30:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:30:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:30:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:30:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f672a32a5a7d2c45be508745f49ef21073e964225973cf17ea017ff8c3732852`  
		Last Modified: Fri, 20 Nov 2026 19:50:48 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c618c5a2f2870d79017b6245cae28613576a6cf55c47ce5c8711b461890502b9`  
		Last Modified: Tue, 24 Nov 2026 00:30:54 GMT  
		Size: 18.3 MB (18279367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd92b1939d5953aadf01da19c0e5bbfc0654528c5feb6a25c06581b4b29e85a2`  
		Last Modified: Tue, 24 Nov 2026 00:30:53 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e12001700d22c1aee2b26382fe02c3391f7f344be4c78334940023c6c12ae73`  
		Last Modified: Tue, 24 Nov 2026 00:30:53 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ade57659974a352fc8e5372e03ee8c17c384815585919d7f9b44f7f057ae99a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec50362539c4132d4d1336d97ce64904e23531f405e7955e1d83409a1581aa7f`

```dockerfile
```

-	Layers:
	-	`sha256:21528d68ed6762bb63423ae29841f88b5ce5d1614b365f62386c02521faa489b`  
		Last Modified: Tue, 24 Nov 2026 00:30:53 GMT  
		Size: 2.7 MB (2687677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:456949a295e12ef6ff5b804550a1917bdaa0a8be64306825d8e5d6e56a871f70`  
		Last Modified: Tue, 24 Nov 2026 00:30:53 GMT  
		Size: 19.1 KB (19080 bytes)  
		MIME: application/vnd.in-toto+json
