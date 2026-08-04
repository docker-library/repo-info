## `clojure:lein-bullseye-slim`

```console
$ docker pull clojure@sha256:f444cb6c060396b56dce4272647c1bb7bcdb4c83876176eee011eab3440872d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9dd4c94705f151eea64c308b7e5e0175be2f5e17e42796567485b2dbe1a90a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142994206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72259608156e06c19ef2d7008f99f419670f4c754391cad44bddb97b42fa314`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:53:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:37 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541467d8c89873d4a9d79aa6a95eacd7d8c73e19c504e858e9e6dd73642a5595`  
		Last Modified: Tue, 04 Aug 2026 02:55:10 GMT  
		Size: 92.6 MB (92574586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a830bf26e6755cc8cc88490c99fc45962a715fffbf9cbcef4cfc7d88d957abdf`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 15.6 MB (15644234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4cb1babd72b24eb1f2ce400b147ed1282c715a03478a56ab16d11df054181e`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff314096c8c6021a4b69f9c39093e9d246352bc426955b174d34086c0d9148b`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3d474ad0fbf721cf42ac1e72063f3aeae66284d822e87b7931515e9a0189341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ea70f18477ec199d04e5cc6dc7cdb337bbab8390062b802ddd8e1d9c8f2229`

```dockerfile
```

-	Layers:
	-	`sha256:20fdeeb9e13f05a188ab85207036d4d54002e5fe2aec1c3ace04e5beb1c103e7`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 3.0 MB (3005168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cce4336bf915a7372f142bd5dd20b29de35bb472def7a06a56d4f504ccacf204`  
		Last Modified: Tue, 04 Aug 2026 02:55:07 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:71a24bcd6476b228e2fe6f6cad808e0edaa3ad31fdb048043fcc98db680e254b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140426592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa59422c95f4401796103cd09beee940d98ba6c759932957d8e3c4e479d54392`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:54:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:54:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:55:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:55:14 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:55:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:55:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9641b6f3375e8e36dd902775e1a1569ca2d981edbc0e15a61e08c8c5e7f5b45f`  
		Last Modified: Tue, 04 Aug 2026 02:55:35 GMT  
		Size: 91.5 MB (91542237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919f5840d2a05b742dbbe7ead908efa7e1126e4093f5dc7c83044069484bd0e1`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 15.6 MB (15619758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816028018c12850215b8a043974fddf00136356847e121a6c694763d07f56ac4`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df493683f1b9d7c219d270d05683845f8f539785db0b1dd119c42cf54abdda8`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:66abb02483593640b31c102cb7843a3edd80b26c5620b3bd6eb7576e39257e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f63446fcfba949ab5b71606224f0dab869c1d2292daa5c55cf490e79e694d8d`

```dockerfile
```

-	Layers:
	-	`sha256:684fda34bd49a8dc342cb8080aedb42992e296a2aebe201c5171079d5e4b86eb`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 3.0 MB (3004798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e16d5b5dcd24d1948f3e4851760acd9e9bc9246122738acfa24071f39715b6c`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json
