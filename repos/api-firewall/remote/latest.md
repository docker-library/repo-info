## `api-firewall:latest`

```console
$ docker pull api-firewall@sha256:2657a476548195ac170b668c1220ea503766a322674a1397d821a194c5f9791f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `api-firewall:latest` - linux; amd64

```console
$ docker pull api-firewall@sha256:d5c522da5686b25f6d7eeb4f7b78db4b4db984d7985856a5447fa55e53a87a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18485669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98587341097d818055a83d641fca2fc4267c14641857cac83464a6abbb43f104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:46 GMT
ENV APIFW_PATH=/opt/api-firewall
# Thu, 05 Nov 2026 18:53:46 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:53:46 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Thu, 05 Nov 2026 18:53:46 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Thu, 05 Nov 2026 18:53:48 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Thu, 05 Nov 2026 18:53:48 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Thu, 05 Nov 2026 18:53:48 GMT
USER api-firewall
# Thu, 05 Nov 2026 18:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:53:48 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5424b477a29482e2672b3db4a876120aca9d9b12a4c21c1b8f33099ac48a093f`  
		Last Modified: Thu, 05 Nov 2026 18:53:54 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a133919744d13b1695ce08b7eba87866a8ad1a5c30802521bb39c618baced3`  
		Last Modified: Thu, 05 Nov 2026 18:53:55 GMT  
		Size: 14.6 MB (14631826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de4b5d75f2ac1ab7e1a0dfb08dce63f7f260e014bb07194759bb791aede0906`  
		Last Modified: Thu, 05 Nov 2026 18:53:55 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:7a3df54d7bee6ae6ab9993f5e9216dd809ba1333604e2413c6bb1c69c3b307f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96cb68a105e5d86cfc74336c2b3b7c89881b2629c5b9cea53f47e0aaf3d4e7a`

```dockerfile
```

-	Layers:
	-	`sha256:e31cddef317b58c3e55bcae56f12a39861871eefa16594d6faa4643911ece189`  
		Last Modified: Thu, 05 Nov 2026 18:53:54 GMT  
		Size: 170.6 KB (170642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb58c384627ad7b2b3f5f9e326879ac64571871a75b10e7de23dc645fe559df`  
		Last Modified: Thu, 05 Nov 2026 18:53:54 GMT  
		Size: 13.5 KB (13502 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; arm64 variant v8

```console
$ docker pull api-firewall@sha256:210b88a0678978f444f2291c69101dc87f1f8dc8bd61d8105ea6a122a680668d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17507433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c976b1dce6ffbf03e7fc06a40d7090e4aaf01f7ceaacd3ae9258458962e57da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:49:34 GMT
ENV APIFW_PATH=/opt/api-firewall
# Thu, 05 Nov 2026 18:49:34 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:34 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Thu, 05 Nov 2026 18:49:34 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Thu, 05 Nov 2026 18:49:37 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Thu, 05 Nov 2026 18:49:37 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Thu, 05 Nov 2026 18:49:37 GMT
USER api-firewall
# Thu, 05 Nov 2026 18:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:49:37 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7df77a9605b8e0438024a62c08be65085fcdea5b5ef9dfbfb2fa7ca958f3e79`  
		Last Modified: Thu, 05 Nov 2026 18:49:43 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c0650164c342818d9f97dfa6530fff1e62d908683b5dc62c6a8bf19cd651c5`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 13.3 MB (13315961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8547de6822cc20443e9969ed650a4093e9dcf02d29c849ac1afdae8073cd07`  
		Last Modified: Thu, 05 Nov 2026 18:49:43 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:84eed1c062a23904e3249caf42eec547fcb816db900026e19854ba74ca2bc297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 KB (183622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2fc214766fc0f3b9e6c4ecfe3361f60c1f34f9637aa11b5b0889da1c7b33d2`

```dockerfile
```

-	Layers:
	-	`sha256:153a7a3ff54937c2416517ecea02d15f42171c44a864db9c8672d81c923e563c`  
		Last Modified: Thu, 05 Nov 2026 18:49:43 GMT  
		Size: 170.0 KB (170024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3c10700ea0c3028b77f0920ff43a62d0c565703d273cd36cd9c56728d81ff34`  
		Last Modified: Thu, 05 Nov 2026 18:49:43 GMT  
		Size: 13.6 KB (13598 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; 386

```console
$ docker pull api-firewall@sha256:382e736f913f9674e362ad03ce5c7781b8fb4cb0a08d91a85367b5db75985cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16708101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ef97a407549da728dfd223dad2c225d7275f59d9e70edf8897a95b5169e1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:11:09 GMT
ENV APIFW_PATH=/opt/api-firewall
# Thu, 05 Nov 2026 18:11:09 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:11:09 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Thu, 05 Nov 2026 18:11:09 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Thu, 05 Nov 2026 18:11:11 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Thu, 05 Nov 2026 18:11:11 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Thu, 05 Nov 2026 18:11:11 GMT
USER api-firewall
# Thu, 05 Nov 2026 18:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:11:11 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf0b27b7864adc3994063804cd61addf0ef800692f936eb1ceaefcc3b983fa2`  
		Last Modified: Thu, 05 Nov 2026 18:11:17 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d1893d3c2753c73481a78e87e8756c36c93b197077b81a89c9e087a8998cdf`  
		Last Modified: Thu, 05 Nov 2026 18:11:18 GMT  
		Size: 13.0 MB (13028268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1592e113885a4eadec4a2fea8f1c441dd494df55121d12d1f807361307680765`  
		Last Modified: Thu, 05 Nov 2026 18:11:17 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:90c6f88784291474c403f0546fda080bbd41e7a957620975e72a7f07336d15fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a886c5d619eb63fc2dc38d2830ce74c070923267a8cc8e912895d76edd3df4`

```dockerfile
```

-	Layers:
	-	`sha256:0e6deea3a89ce8819edde06d40402565ef10b21a3cd6dc88069f569e897b6d2a`  
		Last Modified: Thu, 05 Nov 2026 18:11:17 GMT  
		Size: 170.6 KB (170627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08250323fcc1e58e1d38f124acc6ff76eefec016ee712c538c0aa93c88336ec8`  
		Last Modified: Thu, 05 Nov 2026 18:11:17 GMT  
		Size: 13.5 KB (13479 bytes)  
		MIME: application/vnd.in-toto+json
